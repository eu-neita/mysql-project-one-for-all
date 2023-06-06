SELECT DISTINCT Us.`name` as pessoa_usuaria
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.`user` AS Us
ON Us.user_id = Hp.user_id
ORDER BY Us.`name`;