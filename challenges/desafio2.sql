SELECT COUNT(music_name) as cancoes, 
COUNT(DISTINCT artist_id) as artistas,
COUNT(DISTINCT album_id) as albuns
FROM SpotifyClone.musics;