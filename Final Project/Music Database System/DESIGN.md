# Design Document

# Music Library Database System

By Caroline Mildred Gomes

Video overview: https://youtu.be/sthyEePb0dY


# Scope

The purpose of this database is to design and implement a simplified music library system similar to platforms like Spotify or Apple Music. The system is intended to organize and manage music-related data efficiently using a relational database structure. It focuses on representing the relationships between users, artists, albums, songs, and playlists.

The database includes the following scope of entities:

Users who can create playlists and manage their music collections.
Artists who create albums and publish songs.
Albums that group songs released by artists.
Songs that represent individual music tracks.
Playlists that allow users to group songs into custom collections.
Playlist-song relationships that connect songs to playlists in a many-to-many structure.

Outside the scope of this database are:

Music streaming functionality (audio playback or streaming servers).
Payment systems, subscriptions, or premium plans.
Social features such as likes, comments, followers, or messaging.
Music recommendation or machine learning systems.
Storage of actual audio files or media content.

This ensures the database remains focused on structured data management rather than application-level services.

# Functional Requirements

A user interacting with this database should be able to:

Create and manage user accounts.
Add new artists, albums, and songs into the system.
Create playlists associated with a user.
Add songs to playlists and remove them if needed.
Query songs based on artist, album, or genre.
View detailed song information using joined relationships.
Retrieve all songs inside a specific playlist.
Maintain relational integrity between all entities.

Beyond the scope of user functionality:

Users should not be able to stream or play audio files.
The system does not support authentication (login/password security).
There is no recommendation engine or personalized playlist generation.
The database does not handle external API integration (e.g., Spotify API).
There is no real-time collaboration or multi-user editing of playlists.

 # Representation
# Entities

This database consists of six main entities:

1. Users

Represents individuals who use the system to create playlists.

Attributes:

id (INTEGER, PRIMARY KEY): Unique identifier for each user.
username (TEXT, UNIQUE, NOT NULL): Name of the user.
email (TEXT, UNIQUE, NOT NULL): User’s email address.
created_at (TEXT): Timestamp of account creation.

Reasoning:
TEXT is used for username and email because they are variable-length strings. UNIQUE constraints ensure no duplicate accounts exist.

2. Artists

Represents musicians or bands.

Attributes:

id (INTEGER, PRIMARY KEY)
name (TEXT, NOT NULL)
country (TEXT)

Reasoning:
Artists are identified by name and optionally country. TEXT is sufficient as no numerical operations are required.

3. Albums

Represents collections of songs released by artists.

Attributes:

id (INTEGER, PRIMARY KEY)
artist_id (INTEGER, FOREIGN KEY)
title (TEXT, NOT NULL)
release_year (INTEGER)

Reasoning:
artist_id establishes a relationship with the artists table. INTEGER is used for year since it allows numeric comparison and sorting.

4. Songs

Represents individual music tracks.

Attributes:

id (INTEGER, PRIMARY KEY)
album_id (INTEGER, FOREIGN KEY)
title (TEXT, NOT NULL)
duration (INTEGER) — stored in seconds
genre (TEXT)

Reasoning:
Duration is stored in seconds (INTEGER) for easier calculations and sorting. Foreign key ensures songs belong to valid albums.

5. Playlists

Represents user-created song collections.

Attributes:

id (INTEGER, PRIMARY KEY)
user_id (INTEGER, FOREIGN KEY)
name (TEXT, NOT NULL)
created_at (TEXT)

Reasoning:
Each playlist is linked to a user. Timestamp helps track creation order.

6. Playlist_Songs

Represents a many-to-many relationship between playlists and songs.

# Attributes:

playlist_id (INTEGER, FOREIGN KEY)
song_id (INTEGER, FOREIGN KEY)
added_at (TEXT)
PRIMARY KEY (playlist_id, song_id)

# Reasoning:
A composite primary key prevents duplicate song entries in the same playlist.

# Relationships

The relationships between entities are as follows:

One artist can produce many albums.
One album can contain many songs.
One user can create many playlists.
One playlist can contain many songs.
One song can appear in many playlists (many-to-many relationship through playlist_songs).
Entity Relationship Diagram
Invalid or unsupported diagram.

# Optimizations

Several optimizations were implemented to improve performance and query efficiency:

Index on songs.title to speed up song search operations.
Index on albums.artist_id to optimize retrieval of albums by artist.
Index on playlists.user_id to quickly fetch playlists belonging to a user.

A SQL VIEW (song_details) was also created to simplify complex JOIN queries. This view combines data from songs, albums, and artists into a single structured result, reducing query complexity and improving readability.

These optimizations ensure efficient data retrieval even as the database grows in size.

# Limitations

Despite its functionality, this database has several limitations:

It does not store actual audio files or support music streaming.
It lacks authentication or security mechanisms for users.
It does not support collaborative playlist editing in real time.
There is no recommendation system or AI-based personalization.
The schema is simplified and does not handle advanced music metadata such as lyrics, producers, or multiple artists per song.

Additionally, the system assumes clean and consistent input data and does not implement advanced validation or error handling at the database level.

