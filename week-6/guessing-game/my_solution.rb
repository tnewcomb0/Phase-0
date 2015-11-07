# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: A guess
# Output: High if your guess is too high, low if it is too low, and correct if your guess was correct.
# Steps:1. Set answer as an instance variable, and set an instance variable for the solution equal to false.
# 2. Define a guess method that takes a number as a parameter, keeping the solution set to false.
# 3. In the guess method, check the number against the answer and return the appropriate symbol- high, low, or correct- using if and else, and returning the solution instance variable as true when you guess correctly.
# 4. Make a method called solved? to display the solution.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solution = false
#   end

#   def guess(number)
#     @solution = false
#     if number > @answer
#       return :high
#     elsif number < @answer
#       return :low
#     else
#       @solution = true
#       return :correct
#     end
#   end

#   def solved?
#     @solution
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    return :correct if solved?
    @number > @answer ? :high : :low
  end

  def solved?
    @number == @answer
  end
end


# Added in a ternary operator to condense the logic.

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# They mirror a real-world object by behaving in their own specific way inside of a class, and not working outside of it. I think that's what this question is asking? It's pretty unclear.

# When should you use instance variables? What do they do for you?

# You use instance variables when you need to access a variables between methods in a class, but not outside of it. So if you have a class with multiple methods that all need to use the same variables you would use instance variables.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control is how the logic of how you move through code. You start from the beginning of you code and you use loop and conditionals to make the code travel the way you want. I didn't have much trouble with it in this exercise.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Symbols are nice because they are immutable, they are similar to true and false, in that they aren't a string representing an absolute, they are the absolute. They are nice because they are a value, not just a string or integer or something.