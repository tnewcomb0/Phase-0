# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 and year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
  elsif year % 4 == 0 and year % 100 == 0 and year % 400 != 0
    return false
  else year % 4 != 0
    return false
  end
end