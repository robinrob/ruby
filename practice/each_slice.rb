#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

a = *(1..10)


a.each_slice(2) do |slice|
  puts slice.join
end