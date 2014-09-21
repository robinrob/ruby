#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


s = 'x[0] = x[1] & x[1] = x[2]'
s.gsub!(/(\w+)\[(\d+)\]/, '\1robin\2smith')
puts s