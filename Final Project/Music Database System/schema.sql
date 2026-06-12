-- MUSIC LIBRARY DATABASE SCHEMA

-- USERS TABLE
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

-- ARTISTS TABLE
CREATE TABLE artists (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT
);

-- ALBUMS TABLE
CREATE TABLE albums (
    id INTEGER PRIMARY KEY,
    artist_id INTEGER,
    title TEXT NOT NULL,
    release_year INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artists(id)
);

-- SONGS TABLE
CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    album_id INTEGER,
    title TEXT NOT NULL,
    duration INTEGER, -- seconds
    genre TEXT,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- PLAYLISTS TABLE
CREATE TABLE playlists (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    name TEXT NOT NULL,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- MANY-TO-MANY: PLAYLIST SONGS
CREATE TABLE playlist_songs (
    playlist_id INTEGER,
    song_id INTEGER,
    added_at TEXT DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (song_id) REFERENCES songs(id)
);

-- INDEXES (OPTIMIZATION)
CREATE INDEX idx_songs_title ON songs(title);
CREATE INDEX idx_albums_artist ON albums(artist_id);
CREATE INDEX idx_playlist_user ON playlists(user_id);

-- VIEW: FULL SONG DETAILS
CREATE VIEW song_details AS
SELECT
    songs.id,
    songs.title AS song_title,
    songs.duration,
    songs.genre,
    albums.title AS album_title,
    artists.name AS artist_name
FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN artists ON albums.artist_id = artists.id;
