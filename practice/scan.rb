#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'scanf'


Log.put "'Robin Smith'.scan(/./).each {|char| print char, ' ' }"
puts


# Same as this though
Log.put "'Robin Smith'.split('').each {|char| print char, ' ' }"
puts


# str = "234 234 234"
Log.put "'234 234 234'.scanf('%d %o %x')"