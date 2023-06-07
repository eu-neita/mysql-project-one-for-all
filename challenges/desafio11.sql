SELECT Al.album_name AS album,
COUNT(Uf.music_id) AS favoritadas from SpotifyClone.albums AS Al
INNER JOIN SpotifyClone.musics AS Mu ON Al.album_id = Mu.album_id
INNER JOIN SpotifyClone.user_fav_musics AS Uf ON Mu.music_id = Uf.music_id
GROUP BY Al.album_name
ORDER BY favoritadas DESC, Al.album_name
LIMIT 3;