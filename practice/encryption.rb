#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


coded = "hfCghHIE5LAM."

puts "Speak, friend, and enter!"

print "Password: "
password = gets.chop

if password.crypt("hf") == coded
  puts "Welcome!"
else
  puts "What are you, an orc?"
end