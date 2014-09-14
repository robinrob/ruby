#!/usr/bin/env ruby

"Robin".each_byte.with_index do |byte, i|
  puts "#{i}: #{byte}"
end