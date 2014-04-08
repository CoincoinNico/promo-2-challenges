require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

### Talk to your coach! ###
puts 'Ask something to your coach'
input_to_your_coach = gets.chomp

# Fonction
coach_answer = coach_answer(input_to_your_coach)


# Finally, print user's age in days:
puts "#{coach_answer}"


