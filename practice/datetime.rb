#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'date'
require 'lib/log.rb'
require 'formatter'


puts DateTime.now()
puts DateTime.now() - 1


Log.put "DateTime.now().strftime('%Y-%m-%d %H:%M:%S')"

Formatter.format_datetime '%Y-%m-%d %H:%M:%S'