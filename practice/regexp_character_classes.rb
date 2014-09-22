#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "The caret (^) has special meaning inside a character class if used at the beginning; it negates the list of
characters (or refers to their complement):"
Log.put "'Robin'.match(/[^aeiou]+/)"
Log.put "'Smith'.match(/[^aeiou]+/)"
puts

Log.cyan "The hyphen, used within a character class, indicates a range of characters (a lexicographic range, that is):"
Log.put "'Robin Smith'.match(/[a-mA-M]/)"
Log.maganda "(Any letter in first half of alphabet)"
Log.put "'Robin Smith'.match(/[^a-mA-M]/)"
Log.maganda "(Any letter in second half of alphabet)"