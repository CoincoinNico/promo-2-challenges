require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  students << name

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list
puts wagon_sort(students)

puts "Congratulations! Your wagon has #{students.length} students:"

puts "#{students[0]}, #{students[1]} and #{students[2]}"