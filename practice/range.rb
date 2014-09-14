#!/usr/bin/env ruby

require 'colorize'


def put(code)
  puts "#{code}: ".green << "#{eval code}".yellow
end


# Inclusive of endpoint
puts "(1..10)".cyan
(1..10).each do |i|
  puts i.to_s.green
end

put "(1..10).end"

put "(1..10).last"

put "(1..10).exclude_end?"


puts "(1..10)".cyan
# Exclusive of endpoint
(1...10).each do |i|
  puts i.to_s.yellow
end

put "(1..10).end"

put "(1..10).last"

put "(1..10).exclude_end?"


puts "others".cyan
put "(1..3).to_a()"