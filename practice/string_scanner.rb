#!/usr/bin/env ruby

require 'strscan'


str = "Robin Smith is the best!"

# The StringScanner class, from the standard library, is different in that it maintains state for the scan rather
# than doing it all at once:
scanner = StringScanner.new(str)
loop do
  word = scanner.scan(/\w+/)    # Get a word at a time
  break if word.nil?
  puts word
  sep = scanner.scan(/\W+/)     # Get next non-word piece
  break if sep.nil?
  puts sep if sep == "!"
end