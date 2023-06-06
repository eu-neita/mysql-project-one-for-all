SELECT Us.`name` as pessoa_usuaria,
IF(MAX(Hp.`date`) > '2021-01-01 00:00:00', 'Ativa', 'Inativa') as status_pessoa_usuaria
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.`user` AS Us
ON Us.user_id = Hp.user_id
GROUP BY Us.`name`
ORDER BY Us.`name`;