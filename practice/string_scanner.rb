#!/usr/bin/env ruby

require 'strscan'

str = "Robin Smith is the best!"

scanner = StringScanner.new(str)
loop do
  word = scanner.scan(/\w+/)    # Get a word at a time
  break if word.nil?
  puts word
  sep = scanner.scan(/\W+/)     # Get next non-word piece
  break if sep.nil?
  puts sep if sep == "!"
end