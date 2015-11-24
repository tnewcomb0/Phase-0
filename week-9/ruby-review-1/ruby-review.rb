# OO Basics: Student


# I worked on this challenge with: Jon.
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(student_first_name,scores_array)   #Use named arguments!
    @first_name = student_first_name
    @scores = scores_array
  end

  def average
    @average = @scores.reduce(:+)/@scores.size
  end

  def letter_grade
    letters = ["A","B","C","D","F"]
    @grade = letters[[[9-(@average/10).to_int,0].max,4].min]
  end

end

alex = Student.new("Alex", [100,100,100,0,100])
betty = Student.new("Betty", [100,100,100,80,100])
carl = Student.new("Carl", [100,0,100,65,100])
david = Student.new("David", [90,70,70,72,65])
ellie = Student.new("Ellie", [50,40,30,-13,100])

students = [alex,betty,carl,david,ellie]

# def linear_search(array, search_target)
#   array.each_with_index do |element,index|
#     if element.first_name == search_target
#       return index
#     end
#   end
#   return -1
# end

# def binary_search(array, search_target, original_index_of_current_zero_index=0)
#   index = array.size/2.to_int
#   first_name = array[index].first_name
#   return index+original_index_of_current_zero_index if search_target==first_name
#   return binary_search(array.slice(0,index), search_target,original_index_of_current_zero_index) if search_target < first_name
#   return binary_search(array.slice(index+1,index),search_target,original_index_of_current_zero_index+index+1)
# end


# Refactored Solution
def linear_search(array, search_target)
  array.each_with_index {|element,index| return index if element.first_name == search_target}
  return -1
end

def binary_search(array, search_target, original_index_of_current_zero_index=0)
  index = array.size/2.to_int
  first_name = array[index].first_name
  return index+original_index_of_current_zero_index if search_target==first_name
  adder = search_target < first_name ? 0 : index+1
  return binary_search(array.slice(adder,index),search_target,original_index_of_current_zero_index+adder)
end

p binary_search(students, "Ellie")




# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1



# Reflection

# What concepts did you review in this challenge?

# We went over iterating through an array using index numbers. We went over using ternary operators. We also used recursion.

# # What is still confusing to you about Ruby?

# I still have some trouble with recursion and iterating through arrays in the more complicated cases.

# # What are you going to study to get more prepared for Phase 1?

# I'm going to works on iteration in nested data structures and recursion.
