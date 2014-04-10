def shuffle_word(a_word)
  #TODO: refactor this method
  
  array = a_word.upcase.chars.to_a
  shuffle_array = array.shuffle
  
  shuffle_array
  
end

def array_of_divisers(n)
  #TODO: refactor this method
  (1..n).select {|i| n % i == 0 }

end

def quote_prime_numbers(n)
  #TODO: refactor this method
  
  #sélectionne les diviseurs dont la division euclidienne avec tous les nombres de 2 à lui-même ne rend pas de reste nul
  #la valeur true est obtenue sur le count
  #compte le nombre de diviseurs qui 
  potential_divisers = (1..n)
  prime_divisers = potential_divisers.find_all do |i|
  	array_of_divisers_of_divisers=(2..i-1).select {|k| i % k == 0 }
  	array_of_divisers_of_divisers.count == 0 
  end
  prime_divisers.map{ |prime_num| "#{prime_num} is prime"}
end