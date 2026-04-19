-- ============================================================
-- Script 2: Insertar 25 registros de prueba
-- Proyecto: Tico Trend - Marketing Digital
-- Categorias: Zapatos, Pantalones, Camisas, Accesorios
-- Red social principal (19 registros): Mastodon
-- Redes adicionales (6 registros): Instagram, Facebook, TikTok
-- Likes variados por categoria
-- Acepta NULL en campos opcionales (datos de prueba)
-- ============================================================

USE TicoTrend;
GO

SET IDENTITY_INSERT dbo.MarketingDigitalPruebas OFF;
GO

INSERT INTO dbo.MarketingDigitalPruebas
    (FechaPublicacion, NombreRedSocial, Categoria, Descripcion, LinkImagen, CantidadLikes)
VALUES

-- ---- Mastodon (19 registros) ----

-- Zapatos (5 registros en Mastodon)
(
    '2024-11-05T10:00:00',
    'Mastodon',
    'Zapatos',
    'Lleva tu estilo al siguiente nivel con nuestros zapatos de temporada. Visita Tico Trend en Cartago y enamorate de cada paso. #ZapatosTicoTrend #ModaCostaRica #TicoStyle',
    'https://drive.google.com/file/d/abc001/view?usp=sharing',
    312
),
(
    '2024-11-18T14:30:00',
    'Mastodon',
    'Zapatos',
    'Comodidad y estilo en cada pisada. Nuestros zapatos sport son perfectos para tu dia a dia. Visitanos en Cartago! #Zapatos #TicoTrend #ComodoYElegante',
    'https://drive.google.com/file/d/abc002/view?usp=sharing',
    278
),
(
    '2024-12-02T09:15:00',
    'Mastodon',
    'Zapatos',
    'Zapatos de cuero artesanal, duraderos y con ese toque premium que mereces. Disponibles en tienda. #CueroNatural #ZapatosPremium #TicoTrend',
    NULL,
    450
),
(
    '2025-01-10T11:00:00',
    'Mastodon',
    'Zapatos',
    'Estrena el ano con el calzado ideal. Modelos exclusivos solo en Tico Trend, Cartago. #ZapatosNuevos #AnoNuevo #TicoStyle',
    'https://drive.google.com/file/d/abc004/view?usp=sharing',
    390
),
(
    '2025-02-14T16:00:00',
    'Mastodon',
    'Zapatos',
    'El regalo perfecto para San Valentin: unos zapatos que haran latir el corazon. #SanValentin #Zapatos #TicoTrend',
    'https://drive.google.com/file/d/abc005/view?usp=sharing',
    520
),

-- Pantalones (5 registros en Mastodon)
(
    '2024-10-08T08:00:00',
    'Mastodon',
    'Pantalones',
    'El pantalon perfecto existe y lo encontraras en Tico Trend. Cortes modernos para cada ocasion. #Pantalones #ModaUrbana #TicoTrend',
    'https://drive.google.com/file/d/abc006/view?usp=sharing',
    195
),
(
    '2024-11-20T13:45:00',
    'Mastodon',
    'Pantalones',
    'Pantalones cargo con multiples bolsillos, ideales para aventuras o el dia a dia. Visitanos en Cartago! #PantalonCargo #Estilo #TicoTrend',
    NULL,
    230
),
(
    '2024-12-15T10:30:00',
    'Mastodon',
    'Pantalones',
    'Pantalones de vestir que combinan elegancia y comodidad. Ideales para el trabajo o una cena especial. #PantalonVestir #EleganciaCostaRica #TicoTrend',
    'https://drive.google.com/file/d/abc008/view?usp=sharing',
    175
),
(
    '2025-01-22T15:00:00',
    'Mastodon',
    'Pantalones',
    'Nuevos jeans de temporada disponibles en Tico Trend. Encuentra el corte que mejor se adapta a ti. #Jeans #ModaCostaRica #TicoStyle',
    'https://drive.google.com/file/d/abc009/view?usp=sharing',
    260
),
(
    '2025-03-03T09:00:00',
    'Mastodon',
    'Pantalones',
    'Pantalones jogger comodos y con estilo, perfectos para el fin de semana. Pasate por Tico Trend! #Jogger #CasualStyle #TicoTrend',
    'https://drive.google.com/file/d/abc010/view?usp=sharing',
    210
),

-- Camisas (5 registros en Mastodon)
(
    '2024-10-15T11:00:00',
    'Mastodon',
    'Camisas',
    'Camisas de lino fresco para el clima tico. Coloridas, modernas y comodas. Visitanos en Cartago! #CamisasLino #VeranoTico #TicoTrend',
    'https://drive.google.com/file/d/abc011/view?usp=sharing',
    148
),
(
    '2024-11-28T17:00:00',
    'Mastodon',
    'Camisas',
    'Camisa de franela ideal para los dias frios de diciembre. Abrigo y estilo en uno. #Franela #InviernoTico #TicoTrend',
    NULL,
    NULL
),
(
    '2024-12-20T10:00:00',
    'Mastodon',
    'Camisas',
    'Regala estilo esta Navidad con nuestras camisas de edicion especial. Disponibles en Tico Trend, Cartago. #NavidadTicoTrend #CamisasNavidad #Regalo',
    'https://drive.google.com/file/d/abc013/view?usp=sharing',
    320
),
(
    '2025-02-05T14:00:00',
    'Mastodon',
    'Camisas',
    'Camisa polo clasica, el armario de todo hombre moderno. Varios colores disponibles. #Polo #ClasicoBienVestido #TicoTrend',
    'https://drive.google.com/file/d/abc014/view?usp=sharing',
    189
),
(
    '2025-03-12T09:30:00',
    'Mastodon',
    'Camisas',
    'La camisa hawaiana mas cool de Cartago ya esta disponible. Perfecta para paseos y reuniones. #CamisaHawaiana #SummerVibes #TicoTrend',
    'https://drive.google.com/file/d/abc015/view?usp=sharing',
    275
),

-- Accesorios (4 registros en Mastodon)
(
    '2024-10-25T12:00:00',
    'Mastodon',
    'Accesorios',
    'Un buen accesorio transforma cualquier outfit. Cinturones, gorras y carteras te esperan en Tico Trend. #Accesorios #OutfitGoals #TicoTrend',
    'https://drive.google.com/file/d/abc016/view?usp=sharing',
    410
),
(
    '2024-12-10T16:30:00',
    'Mastodon',
    'Accesorios',
    'Relojes casuales con estilo a precios accesibles. El accesorio que nunca falla. Visitanos en Cartago! #Relojes #AccesoriosModa #TicoTrend',
    NULL,
    NULL
),
(
    '2025-01-30T10:00:00',
    'Mastodon',
    'Accesorios',
    'Gorras bordadas con el logo de Tico Trend. Llevanos puesto a donde vayas! #Gorras #TicoTrend #RepresentaTico',
    'https://drive.google.com/file/d/abc018/view?usp=sharing',
    505
),
(
    '2025-03-20T11:00:00',
    'Mastodon',
    'Accesorios',
    'Billeteras de cuero slim, elegantes y practicas. Ideal para regalar o comprarte. Disponibles en tienda. #Billeteras #Cuero #TicoTrend',
    'https://drive.google.com/file/d/abc019/view?usp=sharing',
    370
),

-- ---- Otras redes sociales (6 registros) ----

-- Instagram (2 registros)
(
    '2024-11-10T18:00:00',
    'Instagram',
    'Zapatos',
    'Zapatos deportivos con tecnologia de amortiguacion para maxima comodidad. Disponibles en Tico Trend Cartago. #RunningTico #ZapatosDeportivos #TicoTrend',
    'https://drive.google.com/file/d/abc020/view?usp=sharing',
    890
),
(
    '2025-02-20T19:00:00',
    'Instagram',
    'Accesorios',
    'Collares y pulseras artesanales de diseno unico. Hecho en Costa Rica con amor. #AccesoriosArtesanales #HechoEnCR #TicoTrend',
    'https://drive.google.com/file/d/abc021/view?usp=sharing',
    1100
),

-- Facebook (2 registros)
(
    '2024-12-05T08:30:00',
    'Facebook',
    'Pantalones',
    'Pantalones de temporada navidena disponibles en Tico Trend. Visita nuestra tienda en Cartago y encuentra el tuyo. #NavidadTicoTrend #Pantalones #ModaCR',
    'https://drive.google.com/file/d/abc022/view?usp=sharing',
    340
),
(
    '2025-01-15T10:00:00',
    'Facebook',
    'Camisas',
    'Camisas de regreso a clases ya disponibles. Fresca, comoda y con estilo para el nuevo semestre. #RegresoCR #Camisas #TicoTrend',
    NULL,
    210
),

-- TikTok (2 registros)
(
    '2025-02-28T20:00:00',
    'TikTok',
    'Zapatos',
    'Zapatos chunky que son tendencia mundial, ya disponibles en Tico Trend Cartago. Corre antes que se agoten! #ChunkyShoes #TendenciaTico #TicoTrend',
    'https://drive.google.com/file/d/abc024/view?usp=sharing',
    2400
),
(
    '2025-03-25T21:00:00',
    'TikTok',
    'Accesorios',
    'Tutorial: como combinar accesorios Tico Trend para un look de 10. Mira el video completo! #GRWM #AccesoriosTico #TicoTrend',
    'https://drive.google.com/file/d/abc025/view?usp=sharing',
    3150
);

GO

PRINT 'Se insertaron 25 registros de prueba correctamente.';
GO

-- Verificacion rapida
SELECT
    COUNT(*)                             AS TotalRegistros,
    SUM(CASE WHEN NombreRedSocial = 'Mastodon'  THEN 1 ELSE 0 END) AS Mastodon,
    SUM(CASE WHEN NombreRedSocial = 'Instagram' THEN 1 ELSE 0 END) AS Instagram,
    SUM(CASE WHEN NombreRedSocial = 'Facebook'  THEN 1 ELSE 0 END) AS Facebook,
    SUM(CASE WHEN NombreRedSocial = 'TikTok'    THEN 1 ELSE 0 END) AS TikTok
FROM dbo.MarketingDigitalPruebas;
GO

SELECT
    Categoria,
    COUNT(*)            AS TotalPublicaciones,
    AVG(CantidadLikes)  AS PromedioLikes,
    MAX(CantidadLikes)  AS MaxLikes,
    MIN(CantidadLikes)  AS MinLikes
FROM dbo.MarketingDigitalPruebas
GROUP BY Categoria
ORDER BY Categoria;
GO