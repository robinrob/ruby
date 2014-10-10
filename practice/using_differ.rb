#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'differ'

Log.cyan "Diff by char:"
Log.put "Differ.diff_by_char('robin andrew smith', 'robin buko smith')"
puts
Log.put "Differ.diff_by_char('robin buko smith', 'robin bukoO smith')"
puts "\n\n"


Log.cyan "Diff by word:"
Log.put "Differ.diff_by_word('robin andrew smith', 'robin andrew smith')"
puts
Log.put "Differ.diff_by_word('robin andrew smith', 'robin buko smith')"
puts
Log.put 'Differ.diff_by_word("robin\nandrew\nsmith", "robin\nbuko\nsmith")'
puts "\n\n"


Log.cyan "Diff by line:"
Log.put 'Differ.diff_by_line("robin\nandrew\nsmith", "robin\nandrew\nsmith")'
puts
Log.put 'Differ.diff_by_line("robin\nandrew\nsmith", "robin\nandrewsmith")'
puts
Log.put 'Differ.diff_by_line("robin\nandrew\nsmith is awesome", "robin\nandrew\nsmith is amazing")'



# diff = Differ.diff_by_line("robin\nandrew\nsmith", "robin\nandrew\nsmith")
# puts diff.public_methods
# puts diff.display