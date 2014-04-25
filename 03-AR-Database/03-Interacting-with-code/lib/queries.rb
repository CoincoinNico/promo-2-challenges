require 'sqlite3'

# opens the database
DATABASE_PATH = "/home/nico/code/CoincoinNico/promo-2-challenges/03-AR-Database/03-Interacting-with-code/lib/db/jukebox.sqlite"
#We create a new database object.
#The Database class encapsulates a single connection to an SQLite database.
#The database is created in memory. So it is not permanent
db = SQLite3::Database.new(DATABASE_PATH)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  rows_number = 0
  db.execute("SELECT * FROM #{table_name}") do
    rows_number += 1
  end
  rows_number
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
  array = []
  db.execute("SELECT * FROM Track WHERE Name LIKE '%love%'" ) do |row|
    array << row
  end
  array
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  array = []
  db.execute("SELECT * FROM Track WHERE Milliseconds >= #{min_length*60000}") do |row|
    array << row
  end
  array
end

# p number_of_rows(db, "Artist")
# p sorted_artists(db)
# p love_tracks(db)
# p long_tracks(db, 2)