SELECT 
    ar.name  AS artista,
    al.name AS album,
COUNT(*) AS pessoas_seguidoras
    FROM artist ar
    INNER JOIN albuns al
    ON al.artist_id = ar.id
    INNER JOIN user_artist ua 
    ON ua.artist_id = al.artist_id
    GROUP BY al.album_id
    ORDER BY 
    pessoas_seguidoras DESC,
    artista ASC,
    album ASC;