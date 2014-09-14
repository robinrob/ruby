#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put("'robin smith'.match(/robin/)")
puts

Log.put("'robin smith' =~ /robin/")
puts

Log.put("'robin\nsmith'.match(/robin.*/)")
puts

# /m modifier means that . will match newlines!
Log.put("'robin\nsmith'.match(/robin.*/m)")