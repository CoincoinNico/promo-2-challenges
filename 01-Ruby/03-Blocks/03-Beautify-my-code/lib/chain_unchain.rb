def shuffle_word(a_word)
  #TODO: refactor this method
  
  array = a_word.upcase.chars.to_a
  shuffle_array = array.shuffle
  
  shuffle_array
  
end


def quote_prime_numbers(n)
  #TODO: refactor this method
  
  #sélectionne les diviseurs dont la division euclidienne avec tous les nombres de 2 à lui-même ne rend pas de reste nul
  #la valeur true est obtenue sur le count
  #compte le nombre de diviseurs qui 
  
  prime_divisers = (1..n).find_all do |i|
  	divisers_of_divisers=(2..i-1).select {|k| i % k == 0 }
  	divisers_of_divisers.count == 0 
  end
  
  prime_divisers.map{ |prime_num| "#{prime_num} is prime"}

end