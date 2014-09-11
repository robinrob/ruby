#!/usr/bin/env ruby
#Mapping strings to strings
inst_section = {
  "cello"     => "string",
  "clarinet"  => "woodwind",
  "drum"      => "percussion",
  "oboe"      => "woodwind",
  "trumpet"   => "brass",
  "violin"    => "string"
}

puts inst_section["oboe"]

#Null mapping gives the nil value by default
puts instSection["bassoon"]
puts "
"

#Set the null mapping value to something else
histogram = Hash.new(0)
puts histogram["key1"]
puts histogram["key1"] = histogram["key1"] + 1
puts histogram["key1"]
