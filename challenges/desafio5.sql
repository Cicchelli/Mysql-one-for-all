SELECT
  m.name AS cancao,
  COUNT(*) AS reproducoes
FROM musics m
INNER JOIN history uh ON uh.music_id = m.music_id
GROUP BY m.name
ORDER BY reproducoes DESC, m.name
LIMIT 2;

