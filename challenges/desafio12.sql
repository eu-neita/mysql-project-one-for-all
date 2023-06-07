SELECT Ar.name_artist AS album,
COUNT(Uf.music_id) AS favoritadas,
	CASE
		WHEN COUNT(Uf.music_id) >= 5 THEN 'A'
		WHEN COUNT(Uf.music_id) >= 3 THEN 'B'
		WHEN COUNT(Uf.music_id) >= 2 THEN 'C'
        WHEN COUNT(Uf.music_id) >= 0 THEN ''
	END AS grade
FROM SpotifyClone.artists AS Ar
LEFT JOIN SpotifyClone.musics AS Mu ON Ar.artist_id = Mu.artist_id
LEFT JOIN SpotifyClone.albums AS Al ON Al.album_id = Mu.album_id
LEFT JOIN SpotifyClone.user_fav_musics AS Uf ON Mu.music_id = Uf.music_id
GROUP BY Ar.name_artist
ORDER BY favoritadas DESC;