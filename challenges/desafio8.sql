SELECT Ar.name_artist AS artista,
Al.album_name AS album FROM SpotifyClone.albums AS Al
INNER JOIN SpotifyClone.artists AS Ar
ON Al.artist_id = Ar.artist_id
WHERE Ar.name_artist = 'Elis Regina'
GROUP BY Ar.artist_id, Al.album_name
ORDER BY artista, album;