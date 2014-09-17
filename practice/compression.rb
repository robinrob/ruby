#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'zlib'
include Zlib


def compress(string, method=nil)
  Deflate.deflate(string, method).to_s.length.to_s.green
end


Log.put '(("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371).length'
Log.put 'compress(("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371)'
Log.put 'compress(("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371, BEST_SPEED)'
Log.put 'compress(("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371, BEST_COMPRESSION)'