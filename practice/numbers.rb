#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

Log.put "0b10010110"
Log.put "01234"
Log.put "0xdeadbeef"
Log.put "0xDEADBEEF"

Log.put "6.02e23"
Log.put "6.626068e-34"

Log.put "Float::MIN"
Log.put "Float::MAX"
Log.put "Float::EPSILON"