WITH history_by_user AS (
  SELECT
    uh.user_id,
    COUNT(*) AS musicas_no_historico
  FROM history uh
  GROUP BY uh.user_id
)
SELECT
  musicas_no_historico
    FROM history_by_user
    INNER JOIN users u ON history_by_user.user_id = u.user_id
    WHERE u.name = 'Barbara Liskov';
