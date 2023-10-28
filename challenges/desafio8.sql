SELECT
ar.name AS artista,
al.name AS album
    FROM artist ar
    INNER JOIN albuns al ON al.artist_id = ar.id
    HAVING artista = 'Elis Regina'
    ORDER BY album ASC;