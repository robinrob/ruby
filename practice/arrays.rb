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