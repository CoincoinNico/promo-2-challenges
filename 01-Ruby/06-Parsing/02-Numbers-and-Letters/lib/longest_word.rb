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
  word_in_grid = true
  attempt_array = attempt.upcase.each_char.to_a
  attempt_array.each do |letter_attempt|
   word_in_grid = false unless grid.include?(letter_attempt)
  end


  uri = URI.parse("http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}").read
  jason = JSON.parse (uri)

  if word_in_grid == false
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
