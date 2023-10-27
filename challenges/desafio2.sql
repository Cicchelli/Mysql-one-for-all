SELECT 
COUNT(m.music_id) AS cancoes, 
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT a.album_id) AS albuns
    FROM musics m
    INNER JOIN albuns a
    ON m.album_id = a.album_id;