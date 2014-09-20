#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put "'Robin Smith'.scan(/./).each {|char| char << ' ' }"
puts


# Same as this though
Log.put "'Robin Smith'.split('').each {|char| char << ' ' }"
puts