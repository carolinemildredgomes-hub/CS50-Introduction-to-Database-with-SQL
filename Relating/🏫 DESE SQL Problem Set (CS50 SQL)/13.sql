SELECT
    "schools"."name",
    "graduation_rates"."graduated"
FROM "schools"
JOIN "graduation_rates"
ON "schools"."id" = "graduation_rates"."school_id"
WHERE "graduation_rates"."graduated" > 90
ORDER BY "graduation_rates"."graduated" DESC,
         "schools"."name" ASC;
