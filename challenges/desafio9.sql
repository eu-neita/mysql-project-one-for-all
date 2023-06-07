SELECT COUNT(Hp.music_id) AS musicas_no_historico
FROM SpotifyClone.history_plays AS Hp
INNER JOIN SpotifyClone.`user` AS Us
ON Us.user_id = Hp.user_id
WHERE Us.`name` = 'Barbara Liskov';