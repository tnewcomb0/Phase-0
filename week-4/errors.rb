# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase= "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
   # puts "What's there to hate about #{thing}?"
#end
#end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end of input, expecting keyword end
# 5. Where is the error in the code?
# You need another end at the end
# 6. Why did the interpreter give you this error?
# you have to close both the while statement and the def statement.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# name error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'South park' for main:Object
# 4. Where is the error in the code?
# there is no way to call south_park because it was never defined.
# 5. Why did the interpreter give you this error?
#It cannot call south_park because it is not a keyword and you never defined it as a method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
# no method error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# This is the same as the last error except Ruby know you are trying to call a method since you have the arguement after it. But there is still no cartman method.
# 5. Why did the interpreter give you this error?
# Same as above.

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# on line 60 where you call cartmans_phrase and include an argument.
# 5. Why did the interpreter give you this error?
# You cannot provide a method with an argument if it doesn't require one.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# after calling cartman_says you need to provide an argument.
# 5. Why did the interpreter give you this error?
# If a method requires an argument you cannot call it without providing one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# after calling cartmans_lie there is only one argument provided.
# 5. Why did the interpreter give you this error?
# The method cartmans_lie requires 2 arguments, and cannot be run with just one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# You can't turn the "respect my authoritay" into a number.
# 5. Why did the interpreter give you this error?
# You are asking 5 to be run "respect my authoritay" times, which you cannot do. You could make it "respect..." * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# in "/": divided by 0
# 4. Where is the error in the code?
# the 20/0
# 5. Why did the interpreter give you this error?
# It's trying to divide 20 by 0, which you cannot do.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 155
# 2. What is the type of error message?
# load error
# 3. What additional information does the interpreter provide about this type of error?
# in `require_relative': cannot load such file -- /Users/trevornewcomb/Desktop/DBC/Phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# where it requires a nonexistant file
# 5. Why did the interpreter give you this error?
# You are trying to check if a nonexistant file is there, which it is not, thus the error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

The end of input error, the first one we worked on, was the most difficult, because saying that it was on line 170 made me think it was referring to the final error as opposed to the first. I also had forgotten that the while command needed an end statement.

How did you figure out what the issue with the error was?

I tried changing the last error and realized I was trying to fix the wrong thing, so I went back and looked at the errors from the beginning and realized there was an extra end statement needed.

Were you able to determine why each error message happened based on the code?

I was able to determine all of them, the only one that really threw me was the first one. It was nice to go over errors because I remember getting them in codeacademy before we started school, and how frustrating they were. Now we're starting to get to understand them.

When you encounter errors in your future code, what process will you follow to help you debug?

I will probably do a similar thing as we just did, see what line the error is, and what type it is, and try to debug it. If necessary I will use online resources if I get some error code I don't know.

=end