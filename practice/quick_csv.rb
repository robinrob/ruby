#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


csv = '"Robin Smith", "is", 27, "years", "old"'

data = eval "[#{csv}]"

data.each do |datum|
  puts datum
end