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
    @column = @letter.sample
    @number = rand(100)
    p @column
    p @number
    #These p could be removed but I like seeing what was called.
  end

   def bingo_check
      @bingo_board.each do |number|
        if number[@letter.index(@column)] == @number
        then  number[@letter.index(@column)] = "x"
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

#Reflection

