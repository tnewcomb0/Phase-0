# Numbers to Commas Solo Challenge

# I spent 2.5 hours on this challenge.
# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
# 0. Pseudocode

# What is the input?

#A positive integer

# What is the output? (i.e. What should the code return?)

#The input number with commas in it.

# What are the steps needed to solve the problem?

# 1. Turn the input number into a string.
# 2. Check if the number is more than 3 characters long.
# 3. Insert the first comma 3 characters from the rightmost character.
# 4. Insert any additional commas 3 over from the initial one.
# 5. Return the new string

# 1. Initial Solution

# def separate_comma(num)
#   num_array = num.to_s.split('')
#   num_array.inject(,)
# Found that inject won't work for this. I need a way to take the numbers 3 at a time. Seems like slice might work.

# def separate_comma(num)
#   num_array = num.tos.split('')
#   split_array = num_array.each_slice(3).to_a
#   comma_array = num_array(0) + "," + num_array(1)
  # This only will work for numbers of a certain length.

def separate_comma(num)
  string_num = num.to_s
  comma = ""
  while 3 < string_num.length
    comma = "," + string_num.slice!(-3,3) + comma
  end
  answer = string_num + comma
  return answer
end

# 2. Refactored Solution

def separate_comma(num)
  string_num = num.to_s
  comma = ""
  while 3 < string_num.length
    comma = "," + string_num.slice!(-3,3) + comma
  end
  return string_num + comma
end

# I didn't have to change anything with my initial solution, since I'd been perusing Ruby Docs a lot lately I remembered the slice! command and figured it'd be perfect for this. However, that isn't to say that coming up with this solution didn't take a really long time...


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?

# I first considered turning the input into an array, because then I could use the index as a way to insert commas, but after about 45 minutes of banging my head against the wall, I couldn't figure out a way to get it to work. So then I started thinking about other methods I could use to seperate strings, and remembered slice! From there it was just figuring out how to split the string up and add in the commas.

# Was your pseudocode effective in helping you build a successful initial solution?

# It was helpful, but only to a point. I think if this had been a much more complicated problem the pseudocode would have been even more helpful.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# My two solutions are almost identical, in looking up other methods to use I couldn't find any shorter solutions. I did have some difficulty in implementing slice! because I hadn't quite understood how using negative numbers worked for choosing where the method started from. And then I had to figure out how to add in the commas.

# How did you initially iterate through the data structure?

# So first I convert the integer to a string. Next I create an empty variable that I will use for adding commas later. Then I check to make sure the number will need commas added in. Then I create a variable to store the characters getting sliced out of the original string. Then I iterate through the original string, making it so the original string will have the last 3 characters taken out of it each time, which are then added into the new variable I created, which also puts a comma in front of them. Last, I return the original variable with the variable holding the numbers with commas after it.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# They were almost the same in this case, just had a superflous variable. But compared to the code that I couldn't get to work this was far better.