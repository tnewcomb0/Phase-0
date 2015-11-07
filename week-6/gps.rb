# Your Names
# 1) Nil Thacker
# 2) Trevor Newcomb

# We spent [1.75] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7, "brownie" => 4, "cupcake" => 3}

  #make sure item_to_make is in library, otherwise raise argumenterror
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  required_ingredients = library[item_to_make]
  leftover_ingredients = order_quantity % required_ingredients

  case leftover_ingredients
  when 0
    return "Calculations complete: Make #{order_quantity/required_ingredients} of #{item_to_make}"
  else
    suggested_items = ""
    sorted = library.sort_by {|key, value| value}.reverse
    leftovers = leftover_ingredients

    # if leftovers goes evenly into the current item, print how many times it goes evenly into the item and subtract that amount from leftovers
    sorted.each do |sub_array|
      if (leftovers / sub_array[1]) > 0
        suggested_items += "#{leftovers / sub_array[1]} #{sub_array[0]}(s) "
        leftovers -= (leftovers / sub_array[1]) * sub_array[1]
      end
    end


    return "Calculations complete: Make #{order_quantity/required_ingredients} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: #{suggested_items}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?

  I learned that naming your variables well is very important. Half of the difficulty of this assignment was just figuring out what each variable meant.

Did you learn any new methods? What did you learn about them?

  I didn't learn any new methods so much as learn how to navigate through other peoples messy code.

What did you learn about accessing data in hashes?

  I learned that you access them in similar ways to accessing arrays, but you just have to use their keys instead of index numbers, and there's a little more to it.

What concepts were solidified when working through this challenge?

 I really got a better hang of navigating through hashes and using multiple variables and making them interact with each other.

=end