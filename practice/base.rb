#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

Log.put "Integer('0b111')"
# Octal
Log.put "Integer('0111')"
# Hexadecimal
Log.put "Integer('0x111')"
puts

Log.put "'0b111'.to_i"
Log.put "'0111'.to_i"
Log.put "'0x111'.to_i"
puts

# Octal
Log.put "'111'.to_i(8)"
# Hexadecimal
Log.put "'111'.to_i(16)"
Log.put "'0x111'.to_i"