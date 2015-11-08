# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Try to emulate the same code as the die class this week for generating a random letter, and use .rand for the number.

# Check the called column for the number called.
  #First, iterate through the bingo board. Find out which array you need to look in for the number, and then see if the number is there.

# If the number is in the column, replace with an 'x'
  # Use an if/then statement to replace the number with x.

# Display a column to the console
  # Puts each array of the board in order.

# Display the board to the console (prettily)
  # Puts a bit of a border around the board.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letter = ["B", "I", "N", "G", "O"]
#     @length = @letter.length
#   end

#   def bingo_call
#     @column = @letter[rand(@length)-1]
#     @number = rand(100)
#     p @column
#     p @number
#   end

#    def bingo_check
#       @bingo_board.each do |num|
#         if num[@letter.index(@column)] == @number
#          then num[@letter.index(@column)] = "x"
#         end
#       end
#   end

#   def display_board
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ["B", "I", "N", "G", "O"]
  end

  def bingo_call
    @number = rand(100)
    @column = @letter.sample
    p "#{@column}-#{@number}"
    #The p could be removed but I like seeing what was called.
  end

  def bingo_check
    @bingo_board.each do |number|
      if number[@letter.index(@column)] == @number
      then number[@letter.index(@column)] = "x"
      end
    end
  end

  def display_board
    puts "--------------------"
    @bingo_board.each {|line| p line}
    puts "--------------------"
    # I tried adding a border on the sides but I wasn't able to figure out how. Using "|" made it look lopsided.
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

  new_game.bingo_call
  new_game.bingo_check
  new_game.bingo_call
  new_game.bingo_check
  new_game.bingo_call
  new_game.bingo_check
  new_game.bingo_call
  new_game.bingo_check
  new_game.bingo_call
  new_game.bingo_check
  new_game.display_board
 # I don't need to call the check and call methods so many times but I wanted to get more chances to score an x.
#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

The pseudocoding wasn't too difficult, I just don't know if I'm quite doing it in the best way though, I'm sure I could improve on it by quite a bit. I find that I sometimes add steps I don't need or leave out steps that I do need.

What are the benefits of using a class for this challenge?

The benefits are that you can use instance variables and have multiple methods that can reference the same variables. It is all nicely contained in the class.

How can you access coordinates in a nested array?

You use syntax like this: array_name[1][0]

What methods did you use to access and modify the array?

.each and .index, .each just iterates through each element in an array and .index returns the index number of the first element that returns true.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I learned about .sample, which takes a random element from an array. It's nice because it can handle strings as well as numbers.

How did you determine what should be an instance variable versus a local variable?

If you want the variable to be accessible all throughout the class (in any of the classes methods) then you want an instance variable. If you want the variable to be contained inside the method that you create it in then you want a local variable.

What do you feel is most improved in your refactored solution?

I used .sample to simplify a little bit of code and I used .each to compress 5 lines into one. There wasn't really too much that changed, more just compressing code down. I like that the answer is as minimal as I can get it, I thought this might turn into a really long bit of code.

  =end