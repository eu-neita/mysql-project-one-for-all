SELECT Mu.`music_name` as cancao,
COUNT(Hp.music_id) as reproducoes
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.`musics` AS Mu
ON Mu.music_id = Hp.music_id
GROUP BY Mu.`music_name`
ORDER BY Mu.`music_name`;