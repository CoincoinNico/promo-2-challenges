def group_anagrams(words)
  #TODO: group anagrams
  hash = {}
  array = []
  words.each do |word|
    if hash[word.chars.sort_by {|letter| letter.downcase}]
      hash[word.chars.sort_by {|letter| letter.downcase}] << word
    else
      hash[word.chars.sort_by {|letter| letter.downcase}] = [word]
    end
  end
  hash.each_value { |value| array << value }
  array
end

# input:
p group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )