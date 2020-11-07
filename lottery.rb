#!/usr/bin/env ruby

numbers = []
6.times do |i|
  print "[#{i + 1}] Enter a number between 1 and 20: "
  numbers << gets.to_i
end

puts "The winning numbers are:"
6.times do |i|
  puts "[#{i + 1}] #{rand(1..20)}"
end
