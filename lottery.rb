#!/usr/bin/env ruby

numbers = []
winning_numbers = []
6.times do |i|
  print "[#{i + 1}] Enter a number between 1 and 20: "
  numbers << gets.to_i
end

puts "The winning numbers are:"
6.times do
  loop do
    winning_number = rand(1..20)
    unless winning_numbers.include?(winning_number)
      winning_numbers << winning_number
      break
    end
  end
end

puts winning_numbers

puts "You have guessed #{(winning_numbers & numbers).length} numbers"
puts "The numbers you were able to guess are #{winning_numbers & numbers}"
