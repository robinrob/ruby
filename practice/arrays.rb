#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


#Array with different types!
Log.put "[3, 'pi', 3.14]"
Log.put "[3, 'pi', 3.14] << 1"
puts


#Initialise empty array
Log.put "[]"
Log.put "Array.new"
puts


#Shortcut to making String array
Log.put "%w{ant bee chipmunk dog elk}"
Log.put "%w{ant bee chipmunk dog elk}[0]"

Log.put "%w{ant bee chipmunk dog elk}[3]"

Log.put "%w{ant bee chipmunk dog elk}[3]"
puts


# Find an element by attribute value
Log.put '[{:num => 1}, {:num => 2}, {:num => 3}].find { |item| item[:num] == 2 }'
puts


# Delete an element by reference
Log.put 'a=[1, 2, 3]; a.delete(2); a'


# Delete an element by index
Log.put 'a=[1, 2, 3]; a.delete_at(2); a'