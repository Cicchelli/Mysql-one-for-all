SELECT
  u.name AS pessoa_usuaria,
  CASE WHEN MAX(YEAR(uh.data_reprod)) >= 2021 THEN 'Ativa' ELSE 'Inativa' END AS status_pessoa_usuaria
FROM users u
INNER JOIN history uh ON uh.user_id = u.user_id
GROUP BY u.name
ORDER BY u.name ASC;