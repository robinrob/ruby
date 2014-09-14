#!/usr/bin/env ruby

require 'colorize'

def put(varname)
  puts "#{varname}: ".green << "#{eval varname}".yellow << "\n\n"
end

put("$0")
put("$*")
put("$\"")
put("$$")
put("$?")
put("$:")
put("$-a")
put("$-d")
put("$DEBUG")
put("__FILE__")
put("$F")
put("$FILENAME")
put("$-i")
put("$-I")
put("$-K")
put("$-l")
put("__LINE__")
put("$LOAD_PATH")
put("$-p")
put("$SAFE")
put("$VERBOSE")
put("$-v")
put("$-w")