# I worked on this challenge by myself.
# This challenge took me [1.5] hours.


# Pseudocode



# Initial Solution

# def super_fizzbuzz(array)
#   array.map! { |x|
#     if x % 3 == 0 && x % 5 == 0
#       x = "FizzBuzz"
#     elsif x % 5 == 0
#       x = "Buzz"
#     elsif x % 3 == 0
#       x = "Fizz"
#     else
#       x = x
#     end
#   }
#   p array
# end

# super_fizzbuzz([1,2,3,4,5,15])

# Refactored Solution

def super_fizzbuzz(array)
  array.map! { |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0
      x = "Fizz"
    else
      x = x
    end
  }
  p array
end


# Reflection

# What concepts did you review in this challenge?

# I reviewed mapping an array and replacing values in it.

# What is still confusing to you about Ruby?

# I didn't really have any trouble with this challenge.

# What are you going to study to get more prepared for Phase 1?

# I will study iterating over arrays and hashes, because I hear from some engineering friends that that is what you do the most.