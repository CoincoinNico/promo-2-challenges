def wagon_sort(students)
  # TODO: return a copy of students, sorted alphabetically
  students = students.delete_if{|x| x == ""}
  students = students.sort { |x, y| x.upcase <=> y.upcase }
  students
end

