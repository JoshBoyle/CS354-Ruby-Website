#Switch case example with some maths
#Find the area of either a rectangle, triangle, or circle based on user choice/input
puts "Please choice if you want the area and perimeter of a rectangle, triangle, or circle"
shape = gets.chomp
case shape
when rectangle
  puts "You have chosen a rectangle. Please enter the height: "
  height = gets.chomp.to_i
  puts "Please enter the width: "
  width = gets.chomp.to_i
  area = height * width
  perimeter = height * 2 + width * 2
  puts "Your rectangle has an area of #{area} and a perimeter of #{perimeter}"
when triangle
  puts "You have chosen a triangle. Please enter the height: "
  height = gets.chomp.to_i
  puts "Please enter the base length: "
  base = gets.chomp.to_i
  area = (height * base) / 2
  puts "Your triangle has an area of #{area}, please add all sides of your triangle together to recieve the perimeter"
when circle
  puts "You have chosen a circle. Please enter the diameter of your circle"
  radius = gets.chomp.to_i / 2
  area = 3.14 * (radius * radius)
  perimeter = 2 * 3.14 * radius
  puts "Your circle has an area of #{area} and a perimeter of #{perimeter}"
