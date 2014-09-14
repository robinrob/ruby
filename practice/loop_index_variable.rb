#!/usr/bin/env ruby

for i in 1..10
  puts "i: #{i}"
  if i > 5
    # This has no effect on loop behaviour!
    i += 2
  end
end