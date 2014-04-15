# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
  resultat_int = []
  CSV.foreach(file_name) do |row|
  movie = {
    name: row[0],
    year: row[1].to_i,
    earnings: row[2].to_i
  }
  resultat_int << movie
  end

  resultat = resultat_int.sort_by { |hsh| hsh[:earnings] }.reverse!.select { |hsh| hsh[:year] < max_year }.take(number)
  resultat

end