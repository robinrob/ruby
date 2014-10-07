#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "Array with different types!"
Log.put "[1, 'two', 3.00, {:four => 4}]"
puts


Log.cyan "Appending to an array:"
Log.put "[1, 'two', 3.00] << {:four => 4}"
puts


Log.cyan "Initialize an empty array:"
Log.put "[]"
Log.put "Array.new"
puts


Log.cyan "Shortcut to making String array:"
Log.put "%w{ant bee chipmunk dog elk}"
Log.put "%w{ant bee chipmunk dog elk}[0]"

Log.put "%w{ant bee chipmunk dog elk}[3]"

Log.put "%w{ant bee chipmunk dog elk}[3]"
puts


Log.cyan "Find an element by attribute value:"
Log.put '[{:num => 1}, {:num => 2}, {:num => 3}].find { |item| item[:num] == 2 }'
puts


Log.cyan "Delete an element by literal value:"
Log.put 'a=[1, 2, 3]; a.delete(2); a'
puts


Log.cyan "Delete an element by reference:"
Log.put 'a=[1, 2, 3]; a.delete(a[1]); a'
puts


Log.cyan "Delete an element by index:"
Log.put 'a=[1, 2, 3]; a.delete_at(1); a'
puts


Log.cyan "Delete a hash element by reference:"
Log.put 'a=[{:one => 1}, {:two => 2}, {:three => 3}]; a.delete(a[1]);a'
puts


Log.cyan "Delete an element from find:"
Log.put 'a=[{:val => 1}, {:val => 2}, {:val => 3}]; a.delete(a.find { |item| item[:val] == 2 }); a'