#!/usr/bin/env ruby

numbers = []
winning_num = []
6.times do |i|
  print "[#{i + 1}] Enter a number between 1 and 20: "
  numbers << gets.to_i
end

puts "The winning numbers are:"
6.times do
  loop do
    winning_numbers = rand(1..20)
    unless winning_num.include?(winning_numbers)
      winning_num << winning_numbers
      break
    end
  end
end

puts "[1] #{winning_num}"

puts "You have guessed #{(winning_num & numbers).length} numbers"
