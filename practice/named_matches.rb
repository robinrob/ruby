#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

# A special form of subexpression is the named expression. This in effect gives a name to a pattern (rather than just
# a number).


Log.cyan "Named matches - similar to number matches (numbered shown first):"
Log.put "'Now is the the time for all...'.match /\\s+(\\w+)\s+\\1\\s+/"
Log.put "'Now is the the time for all...'.match(/\\s+(?<robin>\\w+)\s+\\k<robin>\\s+/)[:robin]"
Log.maganda "The sub-expression (/\\s+(\\w+) is given the name 'robin' by the use of the ?<> operator."
Log.put "'Now is the the time for all...'.match(/(?<spaces>\s+)(?<anyword>\\w+)\\g<spaces>\\k<anyword>\\g<spaces>/)"