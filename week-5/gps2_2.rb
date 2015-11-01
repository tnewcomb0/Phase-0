# Create a new hash.
# 1. Define new method that creates a new hash.

# Add item with quantity.
# 1. Define new method with arguments (item, quantity)
# 2. Add new key/value pair into old hash.

# Remove item from list.
# 1. Define new method with arguments (item, quantity)
# 2. Remove existing key/value pair.

# Update quantity for existing quantity.
# 1. Define new method with arguments (item, quantity)
# 2. Add new key/value pair into old hash, overwriting old value.

# Print the list.
# Create new method to display the list.
# Loop through the hash and puts each line.

=begin
def new_list
  grocery_list = {}
end

def add_item(item, quantity, list)
  list[item] = quantity
  p item + " has been added to the list."
end

def remove_item(item, list)
  list.delete(item)
  p item + " has been removed from the list."
end

def update_quantity(item, quantity, list)
  list[item] = quantity
  p "You are now buying " + quantity.to_s + " " + item + "."
end

def print_list(list)
  list.each do |item, quantity|
    p item + ": " + quantity.to_s + "."
  end
end

list = new_list
add_item("lemonade", 2, list)
add_item("tomatoes", 3, list)
add_item("onions", 1, list)
add_item("ice cream", 4, list)
remove_item("lemonade", list)
update_quantity("ice cream", 1, list)
print_list(list)

=end

#REFACTOR


def new_list
  grocery_list = {}
end

def add_item(item, quantity, list)
  if list.has_key?(item)
    p "#{item} is already on your list."
  else
    list[item] = quantity
    p "#{item} has been added to the list."
  end
end

def remove_item(item, list)
  if list.has_key?(item)
    list.delete(item)
    p "#{item} has been removed from the list."
  else
    p "You don't have #{item} on your list."
  end
end

def update_quantity(item, quantity, list)
  if list.has_key?(item)
    list[item] = quantity
    p "You are now buying #{quantity} of #{item}."
  else
    list[item] = quantity
    p "#{item} has been added to the list."
  end
end

def print_list(list)
  list.each do |item, quantity|
    p "You are buying #{quantity} #{item}."
  end
end

list = new_list
add_item("lemonade", 2, list)
add_item("tomatoes", 3, list)
add_item("onions", 1, list)
add_item("ice cream", 4, list)
add_item("onions", 5, list)
remove_item("cheese", list)
update_quantity("ice cream", 1, list)
print_list(list)
update_quantity("crackers", 10, list)
print_list(list)


# What did you learn about pseudocode from working on this challenge?

# I learned that it is important to break down each step completely.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# I don't think using an array would be very feasible for this challenge, as a hash allowed you to pair the items and quantities together.

# What does a method return?

# A method returns the last thing it evaluates, unless you give it a specific call to return something.

# What kind of things can you pass into methods as arguments?

# Strings, intergers, floats, arrays, pretty much anything.

# How can you pass information between methods?

# You can either use global or instance variables or you can set local variables outside the method and call them.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# I understand how methods can work together better now, but I'm still a little confused with the interaction between hashes and everything else. But that will come with time.