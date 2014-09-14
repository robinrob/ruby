#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

def alpha(x)
  x*1
end

def beta(y)
  y*2
end

gamma = 3
puts alpha beta gamma