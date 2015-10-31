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

    output_mode = mode_hash.values.sort

    result = mode_hash.select { |k,v|
        v == output_mode[-1]
    }

    return result.keys
end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?

# We used a hash because it can store a value that corresponed to the number of times an element was in the array.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# I was a little more successful this time because I had a little better grasp on how arrays and hashes work.

# What issues/successes did you run into when translating your pseudocode to code?

# We were unsure how to get the last hash key from a hash without knowing the actual name of the key.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

#We tried a few different refactors, but they all ended up being at least as complex as our initial solution, so we ended up sticking with that. One I thought would work but didn't help much was sort_by.