#!/usr/bin/env ruby

puts "each_with_index:"
[:a, :b, :c, :d, :e].each_with_index do |val, i|
  puts "#{i}: #{val}"
end

puts

puts "each.with_index:"
[:a, :b, :c, :d, :e].each.with_index do |val, i|
  puts "#{i}: #{val}"
end

puts

puts "each_line.with_index:"
"Robin\nAndrew\nSmith\n".each_line.with_index do |line, i|
  puts "line #{i}: #{line}"
end