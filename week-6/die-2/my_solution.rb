# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: The labels on the die.
# Output: The roll.
# Steps: 1. Create the die class with the instance variable equal to a local variable and a instance variable to reference the index of the input array. Check if the die has enough sides. With the sides method, output how many sides the die has. Last, with the roll method, choose a random number between 1 and the number of sides the die has, with the roll referencing the index of the labels array.



# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.length
      raise ArgumentError.new("Can't have a die with only #{@sides} sides!") unless @sides > 0
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(@sides)]
  end
end


# Refactored Solution

# As I only changed a couple things from my refactored die class from last week I didn't find anything I could refactor here.






# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# The only real difference was that you had to make another variable that references the index of the input array, so when you roll a random number you just have it reference it's corresponding label.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# It was nice to be able to pretty easily repurpose old code I'd written.

# What new methods did you learn when working on this challenge, if any?

# I didn't learn any new methods, the only different method I called that I didn't have last week was .length.

# What concepts about classes were you able to solidify in this challenge?

# I don't think I really learned much new other than the inpotance of writing code that can easily be repurposed.