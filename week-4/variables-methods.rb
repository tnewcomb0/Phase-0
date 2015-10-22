```
puts "Hi, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your name is " + first_name +  "" + middle_name +  "" + last_name + "."
```

```
puts "Hi, what is your favorite number?"
number = gets.chomp
better_number = number.to_i + 1
puts "Have you considered having #{better_number} be your new favorite number?"
```

=begin
How do you define a local variable?

To define a variable you use this syntax: variable_name=value or string

How do you define a method?

To define a method you use this syntax:
def method_name (argument)
  code block
end

What is the difference between a local variable and a method?

A local variable only holds a value or string, whereas a method defines a process. A method can use variables in it, but not vice versa.

How do you run a ruby program from the command line?

You type ruby <file_name>.rb

How do you run an RSpec file from the command line?

You type rspec <file_name>.rb

What was confusing about this material? What made sense?

Not too much was confusing, the only thing that threw me was Chris Pine using different syntax than I was used to, for example calling variables with " + variable_name + " instead of #{variable_name}.
=end