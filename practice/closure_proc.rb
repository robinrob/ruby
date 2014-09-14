#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

def power(exponent)
  # closure/proc remembers context (which includes value of exponent) in which it was created
  proc {|base| base**exponent}
end

square = power(2)
cube = power(3)

puts square.call(11)
puts square.call(5)
puts cube.call(6)
puts cube.call(8)
puts



closure = nil        # Define closure so the name will be known
1.times do           # Start a new context
  x = 5              # x is local to this block
  closure = Proc.new { puts "In closure, x = #{x}" }
end

x = 1

# Define x at top level

closure.call         # Prints: In closure, x = 5