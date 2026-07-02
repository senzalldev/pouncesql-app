PRAGMA foreign_keys = ON;

CREATE TABLE artists (
  artist_id   INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  country     TEXT,
  formed_year INTEGER
);
CREATE TABLE albums (
  album_id     INTEGER PRIMARY KEY,
  artist_id    INTEGER NOT NULL REFERENCES artists(artist_id),
  title        TEXT NOT NULL,
  release_year INTEGER,
  genre        TEXT,
  rating       REAL
);
CREATE TABLE tracks (
  track_id    INTEGER PRIMARY KEY,
  album_id    INTEGER NOT NULL REFERENCES albums(album_id),
  title       TEXT NOT NULL,
  duration_s  INTEGER,
  plays       INTEGER DEFAULT 0
);
CREATE VIEW album_summary AS
  SELECT ar.name AS artist, al.title AS album, al.release_year AS year,
         al.genre, al.rating, COUNT(t.track_id) AS tracks,
         SUM(t.plays) AS total_plays
    FROM albums al
    JOIN artists ar ON ar.artist_id = al.artist_id
    LEFT JOIN tracks t ON t.album_id = al.album_id
   GROUP BY al.album_id;

INSERT INTO artists (name, country, formed_year) VALUES
 ('Aurora Skies','Iceland',2009),
 ('The Midnight Runners','United Kingdom',2012),
 ('Sol Marena','Brazil',2015),
 ('Neon Cascade','United States',2011),
 ('Kites & Anchors','Canada',2018),
 ('Verdant Hollow','Ireland',2007);

INSERT INTO albums (artist_id, title, release_year, genre, rating) VALUES
 (1,'Glacier Hymns',2013,'Ambient',4.6),
 (1,'Northern Light',2017,'Ambient',4.8),
 (2,'City of Rain',2014,'Synthwave',4.4),
 (2,'Afterglow',2019,'Synthwave',4.9),
 (3,'Maré Alta',2016,'Bossa Nova',4.7),
 (4,'Voltage',2015,'Electronic',4.2),
 (4,'Signal Lost',2021,'Electronic',4.5),
 (5,'Paper Wings',2020,'Indie Folk',4.3),
 (6,'Mossgrown',2010,'Post-Rock',4.6);

INSERT INTO tracks (album_id, title, duration_s, plays) VALUES
 (1,'First Frost',252,18420),(1,'Aurora',311,22105),(1,'Still Water',276,15980),
 (2,'Polar',298,40210),(2,'Solstice',334,51200),(2,'Long Dark',402,33110),
 (3,'Umbrella Lights',241,28740),(3,'Downpour',263,19980),
 (4,'Afterglow',289,88450),(4,'Neon Heart',255,120340),(4,'Midnight Drive',312,99870),
 (5,'Maré Alta',228,45210),(5,'Praia',247,38900),
 (6,'Overload',219,15600),(6,'Current',233,17240),
 (7,'Static',201,26110),(7,'Signal Lost',274,31900),
 (8,'Paper Wings',245,20450),(8,'Kite String',232,17800),
 (9,'Mossgrown',356,29010),(9,'Hollow',388,24150);
