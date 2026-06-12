import sqlite3
import os
import project

DB_NAME = "music.db"


# ---------------------------
# TEST DB CREATION
# ---------------------------
def test_db_exists():
    project.init_db()
    assert os.path.exists(DB_NAME)


# ---------------------------
# TEST USERS LOADED FROM JSON
# ---------------------------
def test_users_loaded():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    cursor.execute("SELECT COUNT(*) FROM users")
    count = cursor.fetchone()[0]

    conn.close()

    assert count >= 1  # at least sample users should exist


# ---------------------------
# TEST ARTIST INSERTION
# ---------------------------
def test_artist_insert():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    cursor.execute("INSERT INTO artists (name, country) VALUES (?, ?)",
                   ("Test Artist", "Test Country"))
    conn.commit()

    cursor.execute("SELECT name FROM artists WHERE name = ?", ("Test Artist",))
    result = cursor.fetchone()

    conn.close()

    assert result is not None


# ---------------------------
# TEST ALBUM INSERTION
# ---------------------------
def test_album_insert():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    # Get artist id
    cursor.execute("SELECT id FROM artists LIMIT 1")
    artist = cursor.fetchone()

    if artist:
        artist_id = artist[0]

        cursor.execute("""
            INSERT INTO albums (artist_id, title, release_year)
            VALUES (?, ?, ?)
        """, (artist_id, "Test Album", 2024))

        conn.commit()

        cursor.execute("SELECT title FROM albums WHERE title = ?", ("Test Album",))
        result = cursor.fetchone()

        conn.close()

        assert result is not None
    else:
        conn.close()
        assert False, "No artist found"


# ---------------------------
# TEST SONG INSERTION
# ---------------------------
def test_song_insert():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    cursor.execute("SELECT id FROM albums LIMIT 1")
    album = cursor.fetchone()

    if album:
        album_id = album[0]

        cursor.execute("""
            INSERT INTO songs (album_id, title, duration, genre)
            VALUES (?, ?, ?, ?)
        """, (album_id, "Test Song", 200, "Pop"))

        conn.commit()

        cursor.execute("SELECT title FROM songs WHERE title = ?", ("Test Song",))
        result = cursor.fetchone()

        conn.close()

        assert result is not None
    else:
        conn.close()
        assert False, "No album found"


# ---------------------------
# TEST PLAYLIST CREATION
# ---------------------------
def test_playlist_insert():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    cursor.execute("SELECT id FROM users LIMIT 1")
    user = cursor.fetchone()

    if user:
        user_id = user[0]

        cursor.execute("""
            INSERT INTO playlists (user_id, name)
            VALUES (?, ?)
        """, (user_id, "Test Playlist"))

        conn.commit()

        cursor.execute("SELECT name FROM playlists WHERE name = ?", ("Test Playlist",))
        result = cursor.fetchone()

        conn.close()

        assert result is not None
    else:
        conn.close()
        assert False, "No user found"


# ---------------------------
# TEST PLAYLIST SONG RELATION
# ---------------------------
def test_playlist_song_relation():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()

    cursor.execute("SELECT id FROM playlists LIMIT 1")
    playlist = cursor.fetchone()

    cursor.execute("SELECT id FROM songs LIMIT 1")
    song = cursor.fetchone()

    if playlist and song:
        cursor.execute("""
            INSERT INTO playlist_songs (playlist_id, song_id)
            VALUES (?, ?)
        """, (playlist[0], song[0]))

        conn.commit()

        cursor.execute("""
            SELECT * FROM playlist_songs
            WHERE playlist_id = ? AND song_id = ?
        """, (playlist[0], song[0]))

        result = cursor.fetchone()

        conn.close()

        assert result is not None
    else:
        conn.close()
        assert False, "Missing playlist or song"


# ---------------------------
# TEST QUERY FUNCTION
# ---------------------------
def test_get_songs_by_artist_function(capsys):
    project.get_songs_by_artist("Test Artist")

    captured = capsys.readouterr()

    assert "Songs by" in captured.out
