#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'diff'


puts ('robin'.diff 'smith').diffs