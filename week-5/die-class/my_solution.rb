

# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: The number of sides of the die.
# Output: The roll.
# Steps: 1. Create the die class with the instance variable equal to a local variable. Check if the die has at least 2 sides. With the sides method, outpiut how many sides the die has. Last, with the roll method, choose a random nuber between 1 and the number of sides the die has.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides <= 1
      raise ArgumentError.new("Can't have a die with only #{sides} sides!")
    end
  end

  def sides
    p @sides
  end

  def roll
    p (rand(@sides) + 1)
  end
end



# 3. Refactored Solution

# I couldn't find a more succinct way of putting it.





# 4. Reflection

What is an ArgumentError and why would you use one?

An ArgumentError is a way of telling the coder that the input they are providing will not work. You use it so that your program can return an answer.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used the rand method, which generates a random number. It wasn't too difficult to get it to work. This challenge went pretty quick, as it was the last one I did this week.

What is a Ruby class?

A class is an object in Ruby that has it's own set of methods, as well as a place to store other objects.

Why would you use a Ruby class?

It is a good way to comparmentalize data. You can make a class that will store your data about dog breeds, and instead of that information floating around everywhere you can keep it in one place, as well as keeping the methods associated with it there too.

What is the difference between a local variable and an instance variable?

A local variable is stored in that method, proc, loop etc (wherever it was created), and can only be accessed there, whereas a instance variable is accessible in that instance of a class.

Where can an instance variable be used?

Anywhere in that instance of the class.