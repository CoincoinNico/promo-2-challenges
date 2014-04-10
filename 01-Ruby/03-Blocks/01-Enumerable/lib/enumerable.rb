def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.) 
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |element, index|
    sum += element if index%2 == 1
  end
  sum
end


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array = array.select { |element| element%2 == 0 }
  array
end


def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array = array.reject { |element| element.length > max_length }
  array

end

 
def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  number = array.detect{ |number| number <= limit }
  number
end
 
def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array = array.collect { |element| element + "!" }
  array
end
 
def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  product = array.reduce(1, :*)
  product
end
 
def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  new_array = []
  array.each_slice(2) { |element| new_array << element.sort }
  new_array
  
end


