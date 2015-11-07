# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================

p array[1][1][2][0]

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:2
# ============================================================

p hash[:outer][:inner]["almost"][3]

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

p nested_data[:array][1][:hash]

#=======================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20, 25, 30], 35]

number_array.map! do |x|
  if x.is_a?(Integer)
    x += 5
  else
    x.map! do |y|
      y += 5
    end
  end
end

p number_array

# more_nested_array = [["hello", ["world", "new york"]], ["love", "ruby"]]

# more_nested_array.each do |element|
#   element.each do |inner_element|
#     if inner_element.is_a?(Array)
#       inner_element.each do |third_layer_element|
#         third_layer_element << "test"
#       end
#     end
#   end
# end

# [["hello", ["worldtest", "new yorktest"]], ["love", "ruby"]]
#ary.each {|r|
#    r.each {|c|
 #       ...
 #   }

 #This was all research we posted into Coderpad.

 #REFLECTION

#  What are some general rules you can apply to nested arrays?

# You access them in the same ways you access normal arrays, you just string together the indexes to get into the array you need. They take some getting used to but they behave in the same way normal ones do.

# What are some ways you can iterate over nested arrays?

# You can iterate over them with the same methods you can iterate over regular arrays. .each is the simplest one, and .map is just slightly more complex.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# We only really used 2, .map! and .is_a?, both were ones I was familiar with. They worked well because we wanted to return a changed array, so .map! gave us that, and to check if there was a nested array we used .is_a?(Array).