#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "Embedded sub-expression. Note that this notation is possessive — that is, it is greedy,
and it does not allow backtracking into the subexpression."
Log.put "'abcdef'.match(/(?>abc)(?>def)/).to_a"
puts

Log.cyan "Embedded sub-expressions can be named:"
Log.put "'abcabc'.match(/(?<pattern>abc)\\k<pattern>/)"