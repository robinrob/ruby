#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# Example 1 - Read File and close
counter = 1
file = File.new("read_file.rb", "r")
while (line = file.gets)
  printf "%02d: %s".green, counter, line
  counter = counter + 1
end
file.close

puts

# Example 2 - Pass file to block
counter = 1
File.open("read_file.rb", "r") do |infile|
  while (line = infile.gets)
    printf "%02d: %s".yellow, counter, line
    counter = counter + 1
  end
end


contents = File.open("read_file.rb", "r") do |infile|
  contents = ""
  while (line = infile.gets)
    contents << line.magenta
  end
  contents
end

print contents