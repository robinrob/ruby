#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'scanf'


Log.cyan "Without modifiers:"
Log.put "'Robin Smith'.match(/[a-z]*/)"
puts

Log.cyan "Ignore case:"
Log.put "'Robin Smith'.match(/[a-z]*/i)"
puts

Log.cyan "Perform expression substitution only once:"
# Log.put "'Robin Smith'.match(/[a-z]*/o)"
puts

Log.cyan "Multiline mode (dot matches newline):"
Log.put "'Robin\nSmith'.match(/.*/m)"
puts

Log.cyan "Extended regex (allow whitespace, comments):"
Log.put "'Robin Smith'.match(/ Robin   .*   Smi
  th/x)"
Log.maganda "Extended regexes are useful for making long regexes easier to read by formatting them."