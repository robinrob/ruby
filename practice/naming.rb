#!/usr/bin/env ruby

# Naming conflict between method and variable?

name = "Robin"

def name
  puts "Alma"
end

puts name