# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  #if array.length >= min_size && min_size >= 0
  if min_size >= 0 && min_size <= array.length
    array
  else
       padding = min_size - array.length
    padding.times {array << value}
  end
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size && min_size >= 0
    return array
  else
    padding = min_size - array.length
    padding.times do |x|
    array << value
    end
    array
  end
end


# 3. Refactored Solution



# 4. Reflection