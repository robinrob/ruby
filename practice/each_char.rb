#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

"Robin".each_char.with_index do |char, i|
  puts "char #{i}: #{char}"
end