#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


str = "Robin\nAndrew\nSmith\n"

puts "#{str.split("\n").join('\n').green}#{'.each_line.with_index:'.yellow}"
str.each_line.with_index do |line, i|
  puts "line #{i}: ".green << "#{line.strip}".yellow
end