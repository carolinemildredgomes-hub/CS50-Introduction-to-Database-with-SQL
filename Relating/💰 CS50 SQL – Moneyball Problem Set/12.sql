WITH hit_rank AS (
    SELECT s.player_id
    FROM salaries s
    JOIN performances p
        ON s.player_id = p.player_id
    WHERE s.year = 2001
      AND p.year = 2001
      AND p.H > 0
    ORDER BY (s.salary * 1.0 / p.H), s.player_id
    LIMIT 10
),

rbi_rank AS (
    SELECT s.player_id
    FROM salaries s
    JOIN performances p
        ON s.player_id = p.player_id
    WHERE s.year = 2001
      AND p.year = 2001
      AND p.RBI > 0
    ORDER BY (s.salary * 1.0 / p.RBI), s.player_id
    LIMIT 10
)

SELECT p.last_name, p.first_name
FROM players p
WHERE p.id IN (
    SELECT player_id FROM hit_rank
    UNION
    SELECT player_id FROM rbi_rank
)
ORDER BY p.last_name, p.first_name;
