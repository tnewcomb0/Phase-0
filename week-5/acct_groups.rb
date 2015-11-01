# Psuedocode
# 1. Create an array of everyone in my cohort.
# 2. (Optional, will do if I have the time to come back to it) Randomize the array.
# 3. Split the array into groups of 4 or 5.
# 4. Return that array.

acct_groups = ["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Ryan Zell"]
acct_groups.each_slice(4).to_a

#Refactor for randomness

acct_groups = ["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Ryan Zell"]
shuffle_group = acct_groups.shuffle
groups = shuffle_group.each_slice(4).to_a
puts groups

# What was the most interesting and most difficult part of this challenge?

# The most difficult part was inputting all the names! I liked that there was a built in method for randomizing an array. If I have time this week I will come back and work on making it so if people leave the groups will reform.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I feel like I'm improving, but as this was a pretty simple solution it wasn't too many steps.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think this was a good solution in that it is quite simple, however, it could certainly be improved by adding some more complexity to make it handle people leaving the cohort.

# What data structure did you decide to store the accountability groups in and why?

# I just used an array because it was the simplest way to go about it.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned about the shuffle method, used to randomize the order of elements in an array. Very simple and useful!