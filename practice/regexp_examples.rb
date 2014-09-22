#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "Match an IPv4 IP address (four decimal numbers separated by periods, each number ranging from 0 to 255):"
Log.put "num = /\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5]/
'9.53.97.102'.match(/^(\#{num}\\.){3}\#{num}$/)"
puts


Log.cyan "Match an IPv6 IP address (eight colon-separated 16-bit hex numbers with zeroes suppressed):"
Log.put "num = /[0-9A-Fa-f]{0,4}/
'bcd::1324:ea54::dead::beef'.match(/^(\#{num}:){7}\#{num}$/)"
puts


Log.cyan "Occasionally we want to work with strings of the form “attribute=value”. This extracts the keyword and the
value. The assumptions are that the keyword or attribute is a single word, the value extends to the end of the line,
and the equal sign may be surrounded by whitespace:"
Log.put "'color = blue'.match(/(\\w+)\\s*=\\s*(.*?)$/).to_a"
puts


Log.cyan "Matching roman numerals:"
Log.put "rom1 = /m{0,3}/i
rom2 = /(d?c{0,3}|c[dm])/i
rom3 = /(l?x{0,3}|x[lc])/i
rom4 = /(v?i{0,3}|i[vx])/i
'MCMLXXXV'.match(/^\#{rom1}\#{rom2}\#{rom3}\#{rom4}$/).to_a"
puts

Log.cyan "Matching numeric constants:"
Log.put "'1234'.match(/^[+-]?[1-9][\\d_]*$/)"
Log.put "'0x1b'.match(/^[+-]?0x[\\da-f_]+$/i)"
Log.put "'033'.match(/^[+-]?0[0-7_]+$/)"
Log.put "'0b11011'.match(/^[+-]?0b[01_]+$/i)"
Log.put "'1.234'.match(/^(\\d[\\d_]*)*\\.[\\d_]*$/)"
Log.put "'6.23e21'.match(/^(\\d[\\d_]*)?\\.[\\d_]*(e[+-]?)?(_*\\d[\\d_]*)$/i)"
puts


Log.cyan "Matching date/times:"

Log.put "mo = /(0?[1-9]|1[0-2])/          # 01 to 09 or 1 to 9 or 10-12
dd = /([0-2]?[1-9]|[1-3][01])/   # 1-9 or 01-09 or 11-19 etc.
yy = /(\\d\\d)/                    # 00-99
hh = /([01]?[1-9]|[12][0-4])/    # 1-9 or 00-09 or...
mi = /([0-5]\\d)/                 # 00-59, both digits required
ss = /([0-6]\\d)?/                # allows leap seconds ;-)

date = /(\#{yy}\\/\#{mo}\\/\#{dd})/
time = /(\#{hh}:\#{mi}:\#{ss})/

datetime = /(\#{date} \#{time})/

'datetime: 2014/01/31 01:23:45'.match(datetime)"
puts


Log.cyan "Detect doubled words:"
Log.put "'Robin Robin Andrew Smith Smith'.scan(/\\b(['A-Z]+) +\\1\\b/i)"
puts


Log.cyan "Match all-caps words:"
Log.put "'This is ALL caps'.match(/\\b[A-Z]+\\b/)"
puts


Log.cyan "Match version numbers:"
Log.put "'mylib-1.8.12'.match(/(.*)-(\\d+)\\.(\\d+)\.(\\d+)/)"