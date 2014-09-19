#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'scanf'


Log.put "'Robin Smith'.scan(/./).each {|char| char << ' ' }"
puts


# Same as this though
Log.put "'Robin Smith'.split('').each {|char| char << ' ' }"
puts


# scanf with a block
Log.put "'123 abc 456 def 789 ghi'.scanf('%d%s') { |num, str| [num * 2, str.upcase] }"
puts


# Parameters passed into block are the matches to the format string
# %<word> e.g. %Robin is used to denote a literal string but this is NOT passed in as a match
Log.put "'Robin1 Andrew Robin2 Smith'.scanf('%Robin%d%s') { |a, b| [a, b] }"
puts


# Square brackets are used to actually match a string and pass the matched value into the block
Log.put "'Robin 1 Andrew Robin 2 Smith'.scanf('%[Robin ]%d%s') { |a, b, c| [a, b, c] }"
puts


Log.put "'Robin 1 Andrew Robin 2 Smith'.scanf('%[a-zA-Z ]%d%s') { |a, b, c| [a, b, c] }"