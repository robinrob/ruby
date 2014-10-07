#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

Log.cyan "puts:"
puts "Robin".green
puts

Log.cyan "print:"
print "Robin".green
puts;puts

Log.cyan "printf:"
printf "%s", "Robin".green
puts;puts

Log.cyan "p:"
p "Robin".green