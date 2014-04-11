# encoding: utf-8
def louchebemize_word(word)
  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]

	if word.length == 1
  	word
  else
  	if 'aàaeéèêëiïoôuùy'.include? word[0].downcase
  		if word[0] == word[0].upcase
				word[0] = word[0].downcase
				word.insert(0, "L")
		  else
				word.insert(0, "l")
		  end
  	else
  		word << word[0].downcase
  		if 'bcdfghjklmnpqrstvwxz'.include? word[1]
			  word << word.slice!(1)
			end
  		if word[0] == word[0].upcase
					word[0] = "L"
		  else
					word[0] = "l"
		  end
  	end
  word << suffixes[rand(0..6)]
 	end
word
end

p louchebemize_word("se")


def louchebemize(sentence)

  words = sentence.split(/\b/)

  words.each do |word|
	  if word.match(/\w/)
	  	louchebemize_word(word)
	  else
	  	word
	  end
	end
  words.join("")
end

p louchebemize ("Le chat, va à la plage se baigner!!! Baptiste est venu à la maison.")