#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "Hash literal:"
Log.put "{'name' => 'Robin', :age => 27}"
puts

Log.cyan "Alternate hash literal syntax:"
Log.put "{name: 'Robin', age: 27}"
puts

Log.put "{'name' => 'Robin', :age => 27}.keys"
puts

Log.put "{'name' => 'Robin', :age => 27}.has_key?('age')"
puts

Log.put "{'name' => 'Robin', :age => 27}.has_key?(:age)"