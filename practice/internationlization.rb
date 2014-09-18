#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


def shorten(str)
  "#{str[0]}#{str.size - 2}#{str[-1]}"
end

Log.put "shorten('internationalization')"
Log.put "shorten('localization')"
Log.put "shorten('multilingualization')"