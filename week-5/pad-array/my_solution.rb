# Pad an Array

# I worked on this challenge with: Jamar

# I spent 4.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  The input is the provided arguments.
# What is the output? (i.e. What should the code return?) Theouput is the new array.
# What are the steps needed to solve the problem?
 # 1. Define a new method.
 # 2. Check if the minimum length argument is longer than the array length.
 # 3. If it isn't, return the array.
 # 4. If it is, then take the difference between the 2 and add the value onto the end of the array that many times.

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#    if min_size <= array.length
#     return array
#  else
#    diff = min_size - array.length
#    diff.times do |x|
#    array << value
#    end
#    return array
#  end
# end

# def pad(array, min_size, value = nil) #non-destructive

#   new_array = array.dup
#   if min_size <= array.length
#    return new_array
#  else
#    diff = min_size - array.length
#    diff.times do |x|
#    new_array << value
#    end
#    return new_array
#  end



# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
   if min_size <= array.length
    return array
 else
   diff = min_size - array.length
   diff.times do |x|
   array << value
   end
   return array
 end
end

def pad(array, min_size, value = nil) #non-destructive

  new_array = array.dup
  if min_size <= array.length
   return new_array
 else
   diff = min_size - array.length
   diff.times do |x|
   new_array << value
   end
   return new_array
 end







# 4. Reflection

Were you successful in breaking the problem down into small steps?

Yes, we took it in small steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was pretty difficult because the rspec wasn't working on my end, it was telling me we had errors when we didn't. When we eventually ran it on his end it worked fine, so we wasted a lot of time with trying to fix code that wasn't broken. It ran fine and returned the right results if run in the console too.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution eventually worked, and it probably worked before the 2 hours of refactoring, but since the rspec wasn't working we didn't realize it was ok.

When you refactored, did you find any existing methods in Ruby to clean up your code?

I found a few methods I think would have helped, but we ended up running out of steam after wasting so much time with the initial solution and trying to get rspec to work.

How readable is your solution? Did you and your pair choose descriptive variable names?

Our solution is pretty readable, the variables are well named.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods modify the original input irreversibly, whereas non-destructive methods put the modified array into a new array and leave the old one untouched.