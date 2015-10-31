# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup
  i_want_pets.map!{|number| number.is_a?(Integer) ? number + 1 : number}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |name,age|
    source[name] = age + thing_to_modify
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# .map!  - This method just inputs new values into an array.
# is_a?  - This checks if an element is a certain thing, so is_a?(Integer) checks if an element is an integer.
# .each  - This just iterates through an array or hash.


# Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I used .map!, .is_a?, and .each
#  .map!  - This method just inputs new values into an array.
#   is_a?  - This checks if an element is a certain thing, so is_a?(Integer) checks if an element is an integer.
#   .each  - This just iterates through an array or hash.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that the best way to parse Ruby Docs is to really know what kind of method you need by looking for it in another way, like stack overflow, and then instead of looking at answers people have posted, just take away some recommended methods to use and try them out to see how they work, using Ruby Docs as a guideline.
#
#
#