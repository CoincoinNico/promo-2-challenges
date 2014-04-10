# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator
  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
 
  words = sentence.split(" " || "'")

  words.each do |word|
  	  if word.length == 1
	  	word
	  else
	  	word.insert(0, "l") if 'aeiouy'.include? word[0]
	  	if '.!?§§??!!'.include? word[-1]
	  		word.insert(word.length-1, suffixes[rand(0..6)])
	  	else
	  		word << suffixes[rand(0..6)]
	  	end
	  end
  end  
  words.join(" ")
end
louchebemize ("L'ouragan est violent. La mer est déchaînée.")