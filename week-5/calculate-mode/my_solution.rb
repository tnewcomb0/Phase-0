# Calculate the mode Pairing Challenge

# I worked on this challenge with: Bernice

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? The provided array.
# What is the output? (i.e. What should the code return?) The mode of the array.
# What are the steps needed to solve the problem?
# First we created a new variable for the output and a new empty hash. Next, we iterated through the provided array and set each unique element as a key with a value of 1, and any time the key repeated its value had 1 added to it. Next, we sorted the hash by its values and then returned the key of the last hash in the list.

# 1. Initial Solution

# def mode(input_array)
#     output_mode = nil
#     mode_hash = {}

#     input_array.each do |variable|
#         if mode_hash.has_key?(variable)
#             mode_hash[variable] += 1
#         else
#             mode_hash[variable] = 1
#         end
#     end

#     output_mode = mode_hash.values.sort

#     result = mode_hash.select { |k,v|
#         v == output_mode[-1]
#     }

#     return result.keys
# end


# 3. Refactored Solution

def mode(input_array)
    output_mode = nil
    mode_hash = {}

    input_array.each do |variable|
        if mode_hash.has_key?(variable)
            mode_hash[variable] += 1
        else
            mode_hash[variable] = 1
        end
    end

    output_mode = mode_hash.sort_by { |thing, blah| blah }

    p output_mode[mode_hash.keys.last]
end

p mode([1, 2, 3, 4, 5, 5, 7])

# 4. Reflection