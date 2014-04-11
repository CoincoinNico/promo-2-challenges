def array_to_hash(array)
  #TODO: implement the method :)
hash_from_array = {}

array.each_with_index do |element, index|
  key = block_given? ? (yield(index)) : (index)
  hash_from_array[key] = element
end
hash_from_array

end
