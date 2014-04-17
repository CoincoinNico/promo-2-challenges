require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
	while asking_for_card?(score) == true

	puts "Voulez-vous une carte ? yes or no"
  play = gets
  name.chomp! if name
end while play!=""

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  puts score
  puts bank
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  if score <= 21
	puts "Do you want another card ? yes / no "
 	answer = gets
  end

  if answer = yes
  	true
  else
  	false
  end

end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[0] >= outcome[1]
  	"You loose :-("
  else
  	"You win !"
  end
end
