#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Trevor"
  end
end

class Greetings
  def initialize
    @student = NameData.new
  end

  def hello
    puts "Hello #{@student.name}! How wonderful to see you today!"
  end
end

greet = Greetings.new
greet.hello



# Reflection
=begin
  What are these methods doing?

The methods are setting or changing variables, and some are printing them to the console.

How are they modifying or returning the value of instance variables?

There are entire methods to take the old instance variable and set it equal to a new value.

What changed between the last release and this release?

The what_is_age method was removed and attr_reader: age was included.

What was replaced?

Same as above.

Is this code simpler than the last?

Yes it is.

What changed between the last release and this release?

The change my age method was taken out and attr_writer: age was included.

What was replaced?

Same as above.

Is this code simpler than the last?

Yes it is.


What is a reader method?

A reader method allows instance variables to be accessed, but not changed, outside of the class they were created in.

What is a writer method?

A writer method allows instance variables to be changed, but not accessed, outside of the class they were created in.

What do the attr methods do for you?

They allow for the use of variables that were previously unreachable.

Should you always use an accessor to cover your bases? Why or why not?

No, because you may not want to allow access to variables for reasons of security. This could also make debugging difficult if a variable is getting accessed and/or changed without you realizing it.

What is confusing to you about these methods?

It is a little confusing how they interact with one another, but a little more practice will remedy that problem.
=end