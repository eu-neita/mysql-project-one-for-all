SELECT CONVERT(FORMAT(MIN(Pl.`value`), 2), CHAR) AS faturamento_minimo,
CONVERT(ROUND(MAX(Pl.`value`), 2), CHAR) AS faturamento_maximo,
CONVERT(ROUND(AVG(Pl.`value`), 2), CHAR) AS faturamento_medio,
CONVERT(ROUND(SUM(Pl.`value`), 2), CHAR) AS faturamento_total FROM SpotifyClone.plans AS Pl
INNER JOIN SpotifyClone.user AS Us
ON Us.plan_id = Pl.plan_id;