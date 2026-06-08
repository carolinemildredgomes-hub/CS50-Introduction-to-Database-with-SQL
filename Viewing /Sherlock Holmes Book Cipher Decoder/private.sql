DROP VIEW IF EXISTS message;
DROP TABLE IF EXISTS clues;

CREATE TABLE clues (
    sentence_id INTEGER,
    start_pos INTEGER,
    length INTEGER
);

INSERT INTO clues
(sentence_id, start_pos, length)
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW message AS
SELECT
    substr(
        sentence,
        start_pos,
        length
    ) AS phrase
FROM clues
JOIN sentences
    ON clues.sentence_id = sentences.id;
