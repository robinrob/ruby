#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


def shorten(str)
  "#{str[0]}#{str.size - 2}#{str[-1]}"
end

Log.put "shorten('internationalization')"
Log.put "shorten('localization')"
Log.put "shorten('multilingualization')"
puts

# The French word "épée" refers to a kind of sword
puts "'épée' == '\\u00E9p\\u00E9e': ".green << "#{'épée' == "\u00E9p\u00E9e"}".yellow
Log.put "'épée'.length"
Log.put "'épée'.bytes"
Log.put "'épée'.bytes.length"
Log.put "'épée'.codepoints"
Log.put "'épée'.codepoints.each { |codepoint| puts codepoint.to_s(16).upcase }"