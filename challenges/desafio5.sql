SELECT Mu.`music_name` as cancao,
COUNT(Hp.music_id) as reproducoes
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.`musics` AS Mu
ON Mu.music_id = Hp.music_id
GROUP BY Mu.`music_name`
HAVING COUNT(Hp.music_id) = 
(SELECT MAX(reproducoes)
FROM (SELECT COUNT(Hp.music_id)
AS reproducoes FROM SpotifyClone.history_plays
AS Hp GROUP BY Hp.music_id) as subquery)
ORDER BY Mu.`music_name`;