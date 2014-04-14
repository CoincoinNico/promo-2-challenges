def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words
  hash = {}

  File.open(file_name, "r").each_line do |line|
    line.downcase.gsub(/\?|;|\+|\.|\-|,|'/, "").strip.split(/\s/).each do |word|
      if hash[word]
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
  end

   File.open(stop_words_file_name, "r").each_line do |line|
    line.downcase.split(/\b/).each do |word|
      hash.delete(word) if hash[word]
    end
  end
  puts hash

  array = hash.sort_by { |key, value| value }.reverse.take(number_of_word)

  resultat = Hash[array.map {|key, value| [key, value]}]

  resultat

end

