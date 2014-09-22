#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "Named matches - similar to number matches (numbered shown first):"
Log.put "'Now is the the time for all...'.match /\\s+(\\w+)\s+\\1\\s+/"
Log.put "'Now is the the time for all...'.match(/\\s+(?<robin>\\w+)\\s+\\k<robin>\\s+/)[0]"
Log.maganda "The sub-expression (\\w+) is given the name 'robin' by the use of the ?<> operator."
Log.put "'Now is the the time for all...'.match(/(?<spaces>\\s+)(?<anyword>\\w+)\\g<spaces>\\k<anyword>\\g<spaces>/)"
puts

Log.cyan "Using reg.match(string) method, the named sub-matches can be referenced by that name:"
Log.put "/\\s+(?<robin>\\w+)\\s+\\k<robin>\\s+/.match('Now is the the time for all...')[:robin]"