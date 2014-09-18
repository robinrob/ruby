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