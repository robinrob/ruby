#!/usr/bin/env ruby

require 'colorize'

puts "String-decimal to Integer:".green
puts "1.23".to_i + 2

puts "Integer to Octal:".green
puts "27".to_i(base=8) # What the fart this is "23" - shouldn't it be "33""?

puts "Integer to Hexadecimal:".green
puts "27".to_i(base=16)

puts "Hexadecimal to Integer:".green
puts 0xFF.to_i

puts "Octal to Integer:".green
puts 033.to_i

puts "String to float".green
puts "0.21".to_f + 0.25