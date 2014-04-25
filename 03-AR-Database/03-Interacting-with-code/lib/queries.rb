require 'sqlite3'

# opens the database
# DATABASE_PATH = "/home/nico/code/CoincoinNico/promo-2-challenges/03-AR-Database/03-Interacting-with-code/lib/db/jukebox.sqlite"
#We create a new database object.
#The Database class encapsulates a single connection to an SQLite database.
#The database is created in memory. So it is not permanent
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(*) FROM #{table_name}").flatten[0]
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  array = []
  db.execute("SELECT * FROM Artist ORDER BY Name") do |row|
    array << row[1]
  end
  array
end

def love_tracks(db)
  #TODO: return array of love songs
  db.execute("SELECT * FROM Track WHERE Name LIKE '%love%'" )
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  db.execute("SELECT * FROM Track WHERE Milliseconds >= #{min_length*60000}")
end

# p number_of_rows(db, "Artist")
# p sorted_artists(db)
# p love_tracks(db)
 p long_tracks(db, 60)

