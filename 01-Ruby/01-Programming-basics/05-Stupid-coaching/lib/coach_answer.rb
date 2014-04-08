def coach_answer(your_message)

   if your_message == "I am going to work right now SIR !"
		coach_answer = ""

  	elsif your_message.include?("?")
  		coach_answer = "Silly question, get dressed and go to work !"

  	else
  		coach_answer = "I don't care son, get dressed and go to work !"
  	end

end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
end

