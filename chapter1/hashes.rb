#Mapping strings to strings
#(instruments to sections)
instSection = {
  "cello"     => "string",
  "clarinet"  => "woodwind",
  "drum"      => "percussion",
  "oboe"      => "woodwind",
  "trumpet"   => "brass",
  "violin"    => "string"
}

puts instSection["oboe"]
puts instSection["cello"]
#Null mapping gives the nil value by default
puts instSection["bassoon"]
puts "\n"

#Set the null mapping value to something else
histogram = Hash.new(0)
puts histogram["key1"]
puts histogram["key1"] = histogram["key1"] + 1
puts histogram["key1"]
