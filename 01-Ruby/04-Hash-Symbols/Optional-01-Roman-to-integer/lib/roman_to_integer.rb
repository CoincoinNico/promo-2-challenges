TABLE_CONVERSION = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}


def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  sum = 0
  romans = roman_string.split(//)
  for i in 0...romans.length-1 do
    if TABLE_CONVERSION[romans[i]] >= TABLE_CONVERSION[romans[i+1]]
      sum += TABLE_CONVERSION[romans[i]]
    else
      sum -= TABLE_CONVERSION[romans[i]]
    end
  end

  sum += TABLE_CONVERSION[romans[romans.length-1]]
  sum

end

# testing your program
roman_to_integer("XII") == 12 # => true
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XIX') == 19 # => true

