#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "The common way to specify options for a regex is to use a trailing option (such as i or m). But what if we
want an ar expression? We can turn options on and off with a special notation. Within parentheses,
a question mark followed by one or more options “turns on” those options for the remainder of the regular expression.
A minus sign preceding one or more options “turns off” those options:"
Log.put "'abcdef'.match(/abc(?i)def/)"
Log.put "'abcDEF'.match(/abc(?i)def/)"
Log.put "'ABCdef'.match(/abc(?i)def/)"
Log.put "'abcdef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abCDef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'ABcdef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abcdEF'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abcdEF'.match(/abc(?i-m).*/m)"
Log.maganda "For last part of regex, turn on case sensitivity, turn off multiline"
puts

Log.cyan "If we want, we can use a colon followed by a subexpression, and those options specified will be in effect
only for that subexpression:"
Log.put "'abCDef'.match(/ab(?i:cd)ef/)"
Log.put "'ABcdef'.match(/ab(?i:cd)ef/)"