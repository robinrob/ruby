#!/usr/bin/env ruby

# Swapping variables in Ruby does not require an extra avariable!

a = true
b = false
puts "a: #{a}"
puts "b: #{b}"

a, b = b, a
puts "a: #{a}"
puts "b: #{b}"
