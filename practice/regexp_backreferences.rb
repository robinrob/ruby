#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'



print "/(a\\d+)(b\\d+)(c\\d+)/ =~ a123b45c678: ".green
if /(a\d+)(b\d+)(c\d+)/ =~ "a123b45c678"
  puts "'#$1', '#$2', '#$3'".yellow
end