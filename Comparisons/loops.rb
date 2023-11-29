#while loop
x = gets.chomp.to_i

while x >= 0
    puts x
    x = x -1
end

#until loop
x = gets.chomp.to_i

until x < 0
    puts x
    x -= 1
end

#for loop
x = gets.chomp.to_i

for i in 1..x do
    puts x - i
end