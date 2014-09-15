#!/usr/bin/env ruby

"Robin".each_byte.with_index do |byte, i|
  puts "byte #{i}: #{byte}"
end