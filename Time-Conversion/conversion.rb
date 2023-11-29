#!/usr/bin/env ruby

require 'date'

# d = DateTime.now.strftime('%s') # seconds


puts 'Enter your date of birth in the form yyyy/mm/dd'
birth = gets.chomp
puts "you entered #{birth}"

month = birth[0..3]
day = birth[5..6]
year = birth[8..9]

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

puts "#{s}"

#t = Time.new(to_i(month), 02, 24, 12, 0, 0, "+09:00")
#
t =
