#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

short = ->(a, b) { a + b }
puts short.call(2, 3)

long = lambda { |a, b| a + b }
puts long.call(2, 3)
