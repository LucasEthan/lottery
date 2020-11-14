#!/usr/bin/env ruby

numbers = []
winning_num = []
6.times do |i|
  print "[#{i + 1}] Enter a number between 1 and 20: "
  numbers << gets.to_i
end

puts "The winning numbers are:"
6.times do
  winning_num << rand(1..20)
end

puts "[1] #{winning_num}"

puts "You have guessed #{(winning_num & numbers).length} numbers"
