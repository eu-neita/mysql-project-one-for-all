SELECT Us.`name` as pessoa_usuaria,
COUNT(Hp.user_id) as musicas_ouvidas,
SUM(Mu.duration_music) / 60 as total_minutos
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.musics AS Mu
ON Mu.music_id = Hp.music_id
INNER JOIN SpotifyClone.`user` AS Us
ON Us.user_id = Hp.user_id
GROUP BY Us.`name`
ORDER BY Us.`name`;