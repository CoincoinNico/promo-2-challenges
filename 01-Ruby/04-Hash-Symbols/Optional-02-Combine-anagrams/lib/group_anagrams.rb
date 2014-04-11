def group_anagrams(words)
  #TODO: group anagrams
  hash = {}
  for i in 0...words.length do |word|
    if hash[word.chars.sort_by {|letter| letter.downcase}]
      hash[word.chars.sort_by {|letter| letter.downcase}] << word
    else
      hash[word.chars.sort_by {|letter| letter.downcase}] = word
    end
  hash
end

# input:
p group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
