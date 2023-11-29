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
