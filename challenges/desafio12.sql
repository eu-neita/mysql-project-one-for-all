SELECT Ar.name_artist AS album,
	CASE
		WHEN COUNT(Uf.music_id) >= 5 THEN 'A'
		WHEN COUNT(Uf.music_id) BETWEEN 3 AND 4 THEN 'B'
		WHEN COUNT(Uf.music_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
	END AS ranking
FROM SpotifyClone.artists AS Ar
LEFT JOIN SpotifyClone.musics AS Mu ON Ar.artist_id = Mu.artist_id
LEFT JOIN SpotifyClone.albums AS Al ON Al.album_id = Mu.album_id
LEFT JOIN SpotifyClone.user_fav_musics AS Uf ON Mu.music_id = Uf.music_id
GROUP BY Ar.name_artist
ORDER BY (CASE ranking WHEN '-' THEN 1 ELSE 0 END), ranking, Ar.name_artist;
