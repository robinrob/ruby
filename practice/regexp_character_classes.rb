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
puts


Log.cyan "When a hyphen is used at the beginning or end of a character class, or a caret is used in the middle of a
character class, these characters lose their special meaning and only represent themselves literally. The same is
true of a left bracket, but a right bracket must obviously be escaped:"
Log.put "'Robin-^]Smith'.match(/[-^\\]]+/)"
puts


Log.cyan "Ruby named character classes (unique to Ruby):"
Log.put "'Robin 27 Smith'.match(/[[:print:]]+/)"
Log.put "'Robin 27 Smith'.match(/[[:digit:]]+/)"
Log.put "'Robin 27 Smith'.match(/[[:alpha:]]+/)"
puts


Log.cyan "Negated named character classes:"
Log.put "'Robin 27 Smith'.match(/[[:^print:]]+/)"
Log.put "'Robin 27 Smith'.match(/[[:^digit:]]+/)"
Log.put "'Robin 27 Smith'.match(/[[:^alpha:]]+/)"
puts


Log.cyan "Named character classes provide another non-obvious feature: they match Unicode characters:"
Log.put "'élan'.match(/[[:lower:]]+/)"
puts