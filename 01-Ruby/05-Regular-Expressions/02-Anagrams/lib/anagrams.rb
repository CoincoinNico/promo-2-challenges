def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  a_string.downcase.gsub(/[\W]/,"").each_char.to_a.sort_by { |letter| letter} == another_string.downcase.gsub(/[\W]/,"").each_char.to_a.sort_by { |letter| letter}
end

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  hash = {}
    hash[a_string.downcase.gsub(/[\W]/,"").each_char.to_a.sort_by { |letter| letter}]  = a_string
    if  hash[another_string.downcase.gsub(/[\W]/,"").each_char.to_a.sort_by { |letter| letter}]
      true
    else
      false
    end

end
