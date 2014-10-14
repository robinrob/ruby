#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

Log.put "'1'.instance_of? String"

Log.put "1.instance_of? Fixnum"

Log.put "[].instance_of? Array"

Log.put "{}.instance_of? Hash"

Log.put "nil.instance_of? NilClass"
