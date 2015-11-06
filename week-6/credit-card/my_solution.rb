# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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
