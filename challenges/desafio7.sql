SELECT Ar.name_artist AS artista,
Al.album_name AS album,
COUNT(Fl.artist_id) AS pessoas_seguidoras FROM SpotifyClone.`following` AS Fl
INNER JOIN SpotifyClone.albums AS Al
ON Fl.artist_id = Al.artist_id
INNER JOIN SpotifyClone.artists AS Ar
ON Fl.artist_id = Ar.artist_id
GROUP BY Fl.artist_id, Al.album_name;