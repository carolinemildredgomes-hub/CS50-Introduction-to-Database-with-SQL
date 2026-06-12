import sqlite3
import json
from datetime import datetime

DB_NAME = "music.db"

# Connect to DB
conn = sqlite3.connect(DB_NAME)
cursor = conn.cursor()


# ---------------------------
# CREATE TABLES (SAFE INIT)
# ---------------------------
def init_db():
    with open("schema.sql", "r") as f:
        cursor.executescript(f.read())
    conn.commit()


# ---------------------------
# LOAD SAMPLE DATA
# ---------------------------
def load_students_json():
    with open("students.json", "r") as f:
        data = json.load(f)

    for user in data["users"]:
        cursor.execute(
            "INSERT OR IGNORE INTO users (username, email) VALUES (?, ?)",
            (user["username"], user["email"])
        )

    conn.commit()


# ---------------------------
# ADD SONG TO PLAYLIST
# ---------------------------
def add_song_to_playlist(playlist_id, song_id):
    cursor.execute(
        "INSERT OR IGNORE INTO playlist_songs (playlist_id, song_id) VALUES (?, ?)",
        (playlist_id, song_id)
    )
    conn.commit()
    print("Song added successfully.")


# ---------------------------
# GET ALL SONGS BY ARTIST
# ---------------------------
def get_songs_by_artist(artist_name):
    cursor.execute("""
        SELECT songs.title
        FROM songs
        JOIN albums ON songs.album_id = albums.id
        JOIN artists ON albums.artist_id = artists.id
        WHERE artists.name = ?
    """, (artist_name,))

    results = cursor.fetchall()

    print(f"\nSongs by {artist_name}:")
    for row in results:
        print("-", row[0])


# ---------------------------
# SHOW PLAYLIST
# ---------------------------
def show_playlist(playlist_id):
    cursor.execute("""
        SELECT songs.title
        FROM playlist_songs
        JOIN songs ON playlist_songs.song_id = songs.id
        WHERE playlist_songs.playlist_id = ?
    """, (playlist_id,))

    results = cursor.fetchall()

    print(f"\nPlaylist {playlist_id}:")
    for song in results:
        print("-", song[0])


# ---------------------------
# MAIN MENU
# ---------------------------
def main():
    init_db()
    load_students_json()

    while True:
        print("\n=== MUSIC DATABASE ===")
        print("1. Show songs by artist")
        print("2. Show playlist")
        print("3. Add song to playlist")
        print("4. Exit")

        choice = input("Enter choice: ")

        if choice == "1":
            name = input("Artist name: ")
            get_songs_by_artist(name)

        elif choice == "2":
            pid = input("Playlist ID: ")
            show_playlist(pid)

        elif choice == "3":
            pid = input("Playlist ID: ")
            sid = input("Song ID: ")
            add_song_to_playlist(pid, sid)

        elif choice == "4":
            break


if __name__ == "__main__":
    main()
