#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put("'Robin,CSV,Smith'.split()")
puts

$FIELD_SEPARATOR=' '
Log.put("'Robin CSV Smith'.split()")