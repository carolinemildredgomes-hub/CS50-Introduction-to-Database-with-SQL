SELECT "city", COUNT(*) AS "school_count"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT(*) <= 3
ORDER BY "school_count" DESC, "city" ASC;
