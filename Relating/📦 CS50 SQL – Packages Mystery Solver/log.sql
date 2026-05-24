-- =========================================
-- *** THE LOST LETTER ***
-- =========================================

-- Find sender and receiver address IDs
SELECT id, address
FROM addresses
WHERE address IN ('900 Somerville Avenue', '2 Finnigan Street');


-- Find correct package
SELECT *
FROM packages
WHERE from_address_id = (
    SELECT id
    FROM addresses
    WHERE address = '900 Somerville Avenue'
)
AND to_address_id = (
    SELECT id
    FROM addresses
    WHERE address = '2 Finnigan Street'
)
AND contents LIKE '%letter%';


-- Track package (REPLACE X with actual package id from previous query)
SELECT *
FROM scans
WHERE package_id = 384
ORDER BY timestamp;


-- Find final location
SELECT a.address, a.type
FROM scans s
JOIN addresses a ON s.address_id = a.id
WHERE s.package_id = 384
ORDER BY s.timestamp DESC
LIMIT 1;






-- =========================================
-- *** THE DEVIOUS DELIVERY ***
-- =========================================

-- Find packages with missing sender (no from address)
SELECT *
FROM packages
WHERE from_address_id IS NULL;


-- Narrow by suspicious "bath" clue
SELECT *
FROM packages
WHERE from_address_id IS NULL
AND contents LIKE '%bath%';


-- Track that package (replace X with correct id)
SELECT *
FROM scans
WHERE package_id = 5098
ORDER BY timestamp;


-- Final location
SELECT a.address, a.type
FROM scans s
JOIN addresses a ON s.address_id = a.id
WHERE s.package_id = 5098
ORDER BY s.timestamp DESC
LIMIT 1;



-- =========================================
-- *** THE FORGOTTEN GIFT ***
-- =========================================

-- Find sender and receiver addresses
SELECT id, address
FROM addresses
WHERE address IN ('109 Tileston Street', '728 Maple Place');

-- Find the correct package
SELECT *
FROM packages
WHERE from_address_id = (
    SELECT id FROM addresses WHERE address = '109 Tileston Street'
)
AND to_address_id = (
    SELECT id FROM addresses WHERE address = '728 Maple Place'
);

-- Track the package (DO NOT GUESS package_id)
SELECT *
FROM scans
WHERE package_id = (
    SELECT id FROM packages
    WHERE from_address_id = (
        SELECT id FROM addresses WHERE address = '109 Tileston Street'
    )
    AND to_address_id = (
        SELECT id FROM addresses WHERE address = '728 Maple Place'
    )
)
ORDER BY timestamp;

-- Final location
SELECT a.address, a.type
FROM scans s
JOIN addresses a ON s.address_id = a.id
WHERE s.package_id = (
    SELECT id FROM packages
    WHERE from_address_id = (
        SELECT id FROM addresses WHERE address = '109 Tileston Street'
    )
    AND to_address_id = (
        SELECT id FROM addresses WHERE address = '728 Maple Place'
    )
)
ORDER BY s.timestamp DESC
LIMIT 1;
