SELECT
u.name AS pessoa_usuaria,
COUNT(uh.user_id) AS musicas_ouvidas,
ROUND(SUM(duracao_segundos)/60, 2) AS total_minutos
    FROM users u
    INNER JOIN history uh
    ON u.user_id = uh.user_id 
    INNER JOIN musics m
    ON uh.music_id = m.music_id
    GROUP BY u.name
    ORDER BY u.name ASC;