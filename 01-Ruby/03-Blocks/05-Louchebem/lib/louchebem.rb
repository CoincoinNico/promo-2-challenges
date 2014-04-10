# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator
  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
 
  words = sentence.split(" " || "'")

  words.each do |word|
  	  if word.length == 1
	  	word
	  else
		  	if 'aeiouy'.include? (word[0].upcase || word[0].downcase)
		  		if word[0] == word[0].upcase
					word.insert(0, "L")
		  		else
					word.insert(0, "l")
		  		end


		  	else
		  		word << word[0].downcase
		  		
		  		if word[0] == word[0].upcase
		  			word[0] = "L"
		  		else
		  			word[0] = "l"
		  		end
				
				if 'bcdfghjklmnpqrstvwxz'.include? word[1]	  	
		  			word << word.slice!(1)
		  		end		
		  	end
	   		word << suffixes[rand(0..6)]
	  end
  end  
  words.join(" ")
end
louchebemize ("Le Yéti est violent !!! La mer est chat, fou!! Déchaînée, je ne vais pas me baigner.")