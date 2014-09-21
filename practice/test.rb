#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

# puts "!?".match(/[?!]*/)
#
# puts '!?'.match(/[?!]*/)

# puts '!?'.match(/[!?]*/)

puts 'abbb'.scan(/b*/).inspect