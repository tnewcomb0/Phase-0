# Factorial

# I worked on this challenge with: Dan.

# Take starting value and subtract one from that value all the way down to 1. Multiple all the numbers together.
# Set factorial 0 equal to one.
# Your Solution Below
def factorial(n)
  # until ((n - 1) = 0)
  #   do n - 1
  if n == 0
    return 1
  else
  fact_array = Array.new(n) {|f| f = f + 1}
  fact_array.inject(:*)
  end
end
