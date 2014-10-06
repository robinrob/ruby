#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

Log.put '("  robin   = \tsmith".split("=").collect {|comp| comp.strip!}).inspect'