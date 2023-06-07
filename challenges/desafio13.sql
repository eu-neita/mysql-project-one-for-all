SELECT
    CASE
        WHEN Us.age <= 30 THEN 'Até 30 anos'
        WHEN Us.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT Us.user_id) AS total_pessoas_usuarias,
    COUNT(Uf.music_id) AS total_favoritadas
FROM SpotifyClone.`user` AS Us
LEFT JOIN SpotifyClone.user_fav_musics AS Uf ON Us.user_id = Uf.user_id
GROUP BY faixa_etaria
ORDER BY FIELD(faixa_etaria, 'Até 30 anos', 'Entre 31 e 60 anos', 'Maior de 60 anos');