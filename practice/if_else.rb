#!/usr/bin/env ruby

# If-else which also shows concise way to get typed input e.g. integer

def if_else num
  if num > 20
    puts "Greater than 20"
  elsif num > 10
    puts "Greater than 10"
  else
    puts "Less than 10"
  end
end

if_else gets.to_i