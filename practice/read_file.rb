#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# Example 1 - Read File and close
# counter = 1
# file = File.new("read_file.rb", "r")
# while (line = file.gets)
#   puts "#{counter}: #{line}".green
#   counter = counter + 1
# end
# file.close


# Example 2 - Pass file to block
File.open("read_file.rb", "r") do |infile|
  while (line = infile.gets)
    puts "#{counter}: #{line}".yellow
    counter = counter + 1
  end
end