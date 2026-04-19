from fastapi import FastAPI, HTTPException, Depends, Header, Request
from pydantic import BaseModel, Field
from typing import Annotated
from datetime import datetime, timedelta, timezone
import pandas as pd
import io

app = FastAPI(title="CSV Processor")

API_KEY = "api-key-123"
REQUIRED_COLUMNS = {"FechaPublicacion", "CantidadLikes", "NombreRedSocial", "Categoria"}


# --- Esquemas ---

class GoogleCalendarDatetime(BaseModel):
    dateTime: str = Field(description="ISO 8601 con timezone, ej: 2025-04-21T15:00:00+00:00")
    timeZone: str = Field(default="UTC")

class BestPostingSlot(BaseModel):
    NombreRedSocial: str
    Dia_Semana: int = Field(ge=0, le=6, description="0=Lunes, 6=Domingo")
    Hora: int = Field(ge=0, le=23)
    CantidadLikes: float
    proxima_fecha: GoogleCalendarDatetime

class ProcessCSVResponse(BaseModel):
    mejor_momento: BestPostingSlot


# --- Helpers ---

def get_next_matching_datetime(target_weekday: int, hour: int) -> GoogleCalendarDatetime:
    today = datetime.now(timezone.utc)
    days_ahead = (target_weekday - today.weekday()) % 7 or 7
    next_date = (today + timedelta(days=days_ahead)).replace(
        hour=hour, minute=0, second=0, microsecond=0
    )
    return GoogleCalendarDatetime(dateTime=next_date.isoformat(), timeZone="UTC")


# --- Auth ---

def verify_api_key(x_api_key: Annotated[str, Header()]):
    if x_api_key != API_KEY:
        raise HTTPException(status_code=401, detail="API Key inválida")


# --- Endpoint ---

@app.post("/procesar-csv", response_model=ProcessCSVResponse)
async def procesar_csv(request: Request, _: str = Depends(verify_api_key)):
    body = await request.body()
    if not body:
        raise HTTPException(status_code=400, detail="Body vacío")

    try:
        df = pd.read_csv(io.StringIO(body.decode("utf-8")))
    except Exception as exc:
        raise HTTPException(status_code=422, detail=f"CSV inválido: {exc}")

    missing_columns = REQUIRED_COLUMNS - set(df.columns)
    if missing_columns:
        raise HTTPException(status_code=422, detail=f"Faltan columnas: {sorted(missing_columns)}")

    df["FechaPublicacion"] = pd.to_datetime(df["FechaPublicacion"], format='%Y-%m-%dT%H:%M:%S.%fZ')
    df["Dia_Semana"] = df["FechaPublicacion"].dt.dayofweek
    df["Hora"] = df["FechaPublicacion"].dt.hour

    aggregated = df.groupby(["NombreRedSocial", "Dia_Semana", "Hora"])["CantidadLikes"].mean().reset_index()
    best_row = aggregated.loc[aggregated["CantidadLikes"].idxmax()]

    proxima_fecha = get_next_matching_datetime(int(best_row["Dia_Semana"]), int(best_row["Hora"]))

    return ProcessCSVResponse(
        mejor_momento=BestPostingSlot(**best_row.to_dict(), proxima_fecha=proxima_fecha),
    )