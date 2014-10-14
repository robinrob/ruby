#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'matrix'


a = ['1', '2', '3'].each &:to_i

a.in

# a = Matrix.row_vector(a)

# puts a * 2