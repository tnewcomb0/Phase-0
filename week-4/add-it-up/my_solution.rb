# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: The array provided
# Output: The sum of all the elements in the array.
# Steps to solve the problem.
# Create method called total.
# In method total, add all the elements together.

# 1. total initial solution

def total(array)
x = array.inject(:+)
p x
end
# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
# Create sentence_maker method.
# 1. Capitalize the first array element.
# 2. Concatenate the elements together, including a space after each element.
# 3. Add a period onto the end of the array.

# 5. sentence_maker initial solution

def sentence_maker(array)
  array[0].capitalize!
  array.join(" ")+ "."
end


# 6. sentence_maker refactored solution

