require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  grid = []
  alphabet = ('A'..'Z').to_a
  for i in 0..grid_size-1
    grid << alphabet[rand(26)]
  end

  grid

end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  result = {}
  result[:time] = end_time - start_time

  #checks if attempt matches grid
  attempt_array = attempt.upcase.each_char.to_a
  attempt_hash = Hash.new
  grid_hash = Hash.new

  attempt_array.each{|x| attempt_hash[x] = attempt_array.count(x)}
  grid.each{|x| grid_hash[x] = grid.count(x)}

  match = true
  for i in 0..attempt_array.length-1 do
    match = false unless attempt_hash[attempt_array[i]] < grid_hash[attempt_array[i]] +1
  end
  p match

  uri = URI.parse("http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}").read
  jason = JSON.parse (uri)

  if match == false
    result[:score] = 0
    result[:message] = "not in the grid"
  elsif jason["Error"] == "NoTranslation"
    result[:score] = 0
    result[:message] = "not an english word"
  else
    result[:score] = [100 - end_time.to_i + start_time.to_i, 0].max + attempt.length*10
    result[:translation] = jason["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"].split(" ")[0]
    result[:time] = end_time - start_time
    result[:message] = "well done"
  end


  result
end
