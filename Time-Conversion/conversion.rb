#!/usr/bin/env ruby

puts 'Enter your date of birth in the form yyyy/mm/dd'
birth = gets.chomp
puts "you entered #{birth}"

puts 'Enter your time of birth in the form  00:00:00'
time = gets.chomp
puts "you entered #{time}"

year = birth[0..3]
month = birth[5..6]
day = birth[8..9]

hour = time[0..1]
minute = time[3..4]
second = time[6..7]


t = Time.new(year.to_i, month.to_i, day.to_i, hour.to_i, minute.to_i, second.to_i, "-07:00")
c = Time.now

a = c.to_i - t.to_i

puts "You have been alive for #{a} seconds!"

#add heap to rank who has been alive the longest. and then display the longest times.
