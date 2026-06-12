-- INSERT USERS
INSERT INTO users (username, email)
VALUES ('caroline', 'caroline@email.com');

-- INSERT ARTIST
INSERT INTO artists (name, country)
VALUES ('Taylor Swift', 'USA');

-- INSERT ALBUM
INSERT INTO albums (artist_id, title, release_year)
VALUES (1, '1989', 2014);

-- INSERT SONGS
INSERT INTO songs (album_id, title, duration, genre)
VALUES
(1, 'Blank Space', 231, 'Pop'),
(1, 'Style', 231, 'Pop');

-- CREATE PLAYLIST
INSERT INTO playlists (user_id, name)
VALUES (1, 'My Favorite Songs');

-- ADD SONG TO PLAYLIST
INSERT INTO playlist_songs (playlist_id, song_id)
VALUES (1, 1),
       (1, 2);

-- SELECT ALL SONGS
SELECT * FROM songs;

-- VIEW SONG DETAILS (JOIN VIEW)
SELECT * FROM song_details;

-- FIND ALL SONGS BY ARTIST
SELECT song_title, artist_name
FROM song_details
WHERE artist_name = 'Taylor Swift';

-- UPDATE SONG INFO
UPDATE songs
SET genre = 'Pop/Rock'
WHERE id = 1;

-- DELETE SONG FROM PLAYLIST
DELETE FROM playlist_songs
WHERE playlist_id = 1 AND song_id = 2;
