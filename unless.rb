#!/usr/bin/env ruby

require 'colorize'

puts "unless false:".green
unless false
  puts "Must be true then!"
end

puts "unless true:".green
unless true
  puts "It's false!"
end

puts "unless false and true:".green
unless false and true
  puts "It was false and then true."
end