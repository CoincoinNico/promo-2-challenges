require 'sqlite3'

# opens the database
DATABASE_PATH = "/home/nico/code/CoincoinNico/promo-2-challenges/03-AR-Database/04-SQL-queries/lib/db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT Track.Name, Album.Title, Artist.Name
    FROM Track
    JOIN Album ON Track.AlbumId=Album.AlbumId
    JOIN Artist ON Album.ArtistId=Artist.ArtistId")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  db.execute("SELECT Genre.Name, COUNT(Track.Milliseconds), ROUND(AVG(Track.Milliseconds/60000), 1)
              FROM Track
              INNER JOIN Genre
              ON Track.GenreId == Genre.GenreId
              WHERE Genre.Name == '#{category}'
              GROUP BY Genre.Name").flatten
  # hash = {}
  # hash[:category] = array[0]
  # hash[:number_of_songs] = array[1]
  # hash[:avg_length] = array[2]
  # hash
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end

# p detailed_tracks(db)
p stats_on(db, "Rock")