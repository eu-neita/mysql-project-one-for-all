SELECT MIN(Pl.`value`) AS faturamento_minimo,
MAX(Pl.`value`) AS faturamento_maximo,
AVG(Pl.`value`) AS faturamento_medio,
SUM(Pl.`value`) AS faturamento_total FROM SpotifyClone.plans AS Pl
INNER JOIN SpotifyClone.user AS Us
ON Us.plan_id = Pl.plan_id;