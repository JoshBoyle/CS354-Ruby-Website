#!/usr/bin/env ruby

# require 'date'

# d = DateTime.now.strftime('%s') # seconds

puts 'Enter your date of birth in the form yyyy/mm/dd'
birth = gets.chomp
puts "you entered #{birth}"

puts 'Enter your time of birth in the form  00:00:00'
time = gets.chomp
puts "you entered #{time}"

year = birth[0..3]
month = birth[5..6]
day = birth[8..9]

# puts "the current time is #{d}"
#puts "the birth month is #{mi}"
#puts "the birth day is #{di}"
#puts "the birth year #{yi}"

#puts "Date.civil() #{d}"

# sub = month - 2
#puts "date #{Date.today}"
#09/17/2001

# do something with a hashmap.
#s = Time.now.to_i(month)


# zone = timezone("US/Boise")

t = Time.new(year.to_i, month.to_i, day.to_i, 12, 0, 0, "+02:00")
c = Time.now

a = c.to_i - t.to_i

puts "You have been alive for #{a} seconds!"
# puts "#{t.to_i}"
# puts "#{c.to_i}"
