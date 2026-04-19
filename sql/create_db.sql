-- ============================================================
-- Script 1: Crear base de datos y tabla MarketingDigitalPruebas
-- Proyecto: Tico Trend - Marketing Digital
-- ============================================================

-- Crear la base de datos si no existe
IF NOT EXISTS (
    SELECT name FROM sys.databases WHERE name = 'TicoTrend'
)
BEGIN
    CREATE DATABASE TicoTrend;
END
GO

USE TicoTrend;
GO

-- Eliminar la tabla si ya existe (para recrearla desde cero)
IF OBJECT_ID('dbo.MarketingDigitalPruebas', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.MarketingDigitalPruebas;
END
GO

-- Crear la tabla principal
CREATE TABLE dbo.MarketingDigitalPruebas (
    id                INT           IDENTITY(1,1)  NOT NULL,
    FechaPublicacion  DATETIME2     NULL,
    NombreRedSocial   NVARCHAR(100) NULL,
    Categoria         NVARCHAR(100) NULL,
    Descripcion       NVARCHAR(MAX) NULL,
    LinkImagen        NVARCHAR(500) NULL,
    CantidadLikes     INT           NULL,

    CONSTRAINT PK_MarketingDigitalPruebas PRIMARY KEY (id)
);
GO

PRINT 'Tabla MarketingDigitalPruebas creada correctamente.';
GO