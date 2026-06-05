DROP TABLE IF EXISTS meteorites_temp;
DROP TABLE IF EXISTS meteorites;

CREATE TABLE meteorites_temp (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass TEXT,
    discovery TEXT,
    year TEXT,
    lat TEXT,
    long TEXT
);

.mode csv
.import --skip 1 meteorites.csv meteorites_temp

CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL
);

INSERT INTO meteorites (
    name,
    class,
    mass,
    discovery,
    year,
    lat,
    long
)
SELECT
    name,
    class,

    CASE
        WHEN mass = '' THEN NULL
        ELSE ROUND(CAST(mass AS REAL), 2)
    END,

    discovery,

    CASE
        WHEN year = '' THEN NULL
        ELSE CAST(year AS INTEGER)
    END,

    CASE
        WHEN lat = '' THEN NULL
        ELSE ROUND(CAST(lat AS REAL), 2)
    END,

    CASE
        WHEN long = '' THEN NULL
        ELSE ROUND(CAST(long AS REAL), 2)
    END

FROM meteorites_temp
WHERE nametype != 'Relict'

ORDER BY
    CASE
        WHEN year = '' THEN NULL
        ELSE CAST(year AS INTEGER)
    END,
    name;

DROP TABLE meteorites_temp;
