# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
- define the class
- check if input is a valid number (16 digits)
- splits up number into single digits
- double ever other number starting from the first digit
- split numbers into single digits, double digits must be split into single digits
- add single digits together
- if the sum is divisible by 10 with a remainder of 0, there is a profit

=end

# Input: 16 digit number
# Output: true or false value
# Steps: see above


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(credit_card_number)
#     @number = credit_card_number
#     if credit_card_number.to_s.size != 16
#       raise ArgumentError.new ("Invalid Credit Card Number")
#     end
#   end

#   def split
#     @split = @number.to_s.split('')
#     @split.map! {|i| i.to_i}
#   end

#   def double
#     @doubled_array = []
#     p @split
#     p @doubled_array = @split.map!.with_index{|x,y| y % 2 == 1 ? x : x * 2}
# #     p @doubled_array
#   end

#   def join_array
#     @joined_array = @doubled_array.join
#   end


#   def second_split
#     @split_array = @joined_array.split('')
#     @split_array.map! {|i| i.to_i}
#   end

#   def total
#     @summed_array = @split_array.inject(:+)
#   end

#   def check_card
#     split
#     double
#     join_array
#     second_split
#     total
#     if @summed_array.to_i % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end




# Refactored Solution

class CreditCard
  def initialize(credit_card_number)
    @number = credit_card_number
    raise ArgumentError.new ("Invalid Credit Card Number") if credit_card_number.to_s.size != 16
  end

  def split
    @split = @number.to_s.split('')
    @split.map! {|i| i.to_i}
  end

  def double
    @doubled_array = []
    @doubled_array = @split.map!.with_index{|x,y| y % 2 == 1 ? x : x * 2}
  end
  def second_split
    @split_array = @doubled_array.join.split('')
    @split_array.map! {|i| i.to_i}
  end

  def check_card
    split
    double
    second_split
    @split_array.inject(:+).to_i % 10 == 0 ? true : false
    end
  end


# credit_check = CreditCard.new(3408041234567901)
# p credit_check.split
# p credit_check.double
# p credit_check.second_split
# p credit_check.check_card






# Reflection

# What was the most difficult part of this challenge for you and your pair?

# We were having trouble accessing the variables between methods.

# What new methods did you find to help you when you refactored?

# We used .inject to add up all the numbers in an array, and we used .map!.with_index to double some numbers but not others in an array.

# What concepts or learnings were you able to solidify in this challenge?

# I got a lot better at using classes and instance variables an at accessing methods inside of other methods.