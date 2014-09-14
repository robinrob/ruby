#!/usr/bin/env ruby

# If-elsif-else

def if_else num
  if num > 20
    # Optional bash-like then!
    then
    puts "Greater than 20"
  elsif num > 10
    puts "Greater than 10"
  else
    puts "Less than 10"
  end
end

print "Enter a number: "
if_else gets.to_i