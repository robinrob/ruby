#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

# A method to delay string interpolation

str = proc do |name, girlfriend|
  "I am #{name} and my girlfriend is #{girlfriend}"
end

puts str.call("Robin Smith", "Alma Lorenzo").green