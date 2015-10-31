# Calculate the mode Pairing Challenge

# I worked on this challenge with: Bernice

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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