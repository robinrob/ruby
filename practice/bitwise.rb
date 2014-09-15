#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

puts "This is a tab: (\t)"
puts "Some backspaces: xyz\b\b\b"
puts "This is also a tab: \011"
puts "And these are both bells: \a \007"
puts "This is the unicode snowman: \u2603"