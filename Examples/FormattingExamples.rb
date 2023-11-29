# Formatting examples within ruby

# Both functions would be considered valid in this situation
def greetings name
  puts "Happy Holidays #{name}"
end

def greetings (name)
  puts "Happy Holidays #{name}"
end

# Both calls would work as well with and without parenthesis
greetings "Class"
greetings("Class")

# This same idea is true for many functions as well
"Hi there!".upcase()
"Hi there!".upcase
#Both will output HI THERE!

# Quotes: While both can be used, there is a small difference between the two
# Using double quotes allows special characters to be interpreted and translated
puts "Hello #{name}\n\n"

# Using single quotes will not allow special characters of any kind to be read and used
puts 'Hello #{name}\n\n'

# When using an array in Ruby there are a variety of useless features that are included
testSet = [1, 2.0, "three"]
puts testSet[-1]    #Produces "three"
# Ease of use methods such as
testSet.first
testSet.last
testSet.length

# Ruby contains what are called Ranges, where the range given will run in the for each style
(1..10).each{ |number| puts number}
# These also see a usage in for loops
for i in 1..10
  puts "#{i}"
end

#Or simply call a loop and break it with an if function!
j = 0
loop do
  break if j > 5
  puts j
  j += 1
end

# The if statement also has some other usefullness to it when used in connection with other functions
puts "End of time" if x > 10

# Also works with keyword 'unless'
puts "Keep going" unless x < 10

# Iterators! Have a variety that can be used and modified
# While
i = 0
while i < 5
  i + 1
  puts i
end

# times
i = 10
i.times{|i| print i}

# Each
fruits = %w(mangos bananas apples)
fruits.each{|unique| print unique}

# Upto
i = 0
upperLimit = 10
i.upto(upperLimit) {|number| print number}

# All three of the following functions will add the two given numbers and return it
# No matter the differences in how the solution is returned and formatting
# Ruby will return the final expression if 'return' is not specificied
def adding(a, b)
  solution = a + b
end

def adding(a, b)
  solution = a + b
  return solution
end

def adding(a, b)
  a + b
end

# We can also return multiple values within a function
def addAndMultiply(a, b)
  addSolution = a + b
  multiplySolution = a * b
  return addSolution, multiplySolution
end

puts "Adding results in #{addSolution} and multiplying gives you #{multiplySolution}"

# Ruby uses '#' for comments, and does not require an end of line character. However you can use the standard
# ';' to run two statements on the same line
var1 = 3
var2 = 4; var3 = 5

# We can also do some unique things while assigning and changing values
var2,var3 = var3,var2
# Interpreted as 4,5 = 5,4

# Lines can run on using the '\' and does not need to be indented
# We can also make large block comments by marking them with =begin and =end
name = "Fish \
Sandwich"
=begin
This is the start of
a multiple
line comment that
will be ignored when running
=end

puts name

# And adding the command __END__ will mark all lines below it as white space, therefor ignoring them

__END__
