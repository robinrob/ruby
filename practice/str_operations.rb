#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'zlib'
include Zlib


puts 'Duplicate characters can be removed using the squeeze method:'.cyan
Log.put "'BukooooOOO!!!'.squeeze"
Log.put "'Bukooooooo...'.squeeze('.')"
puts


puts 'Characters can be removed using delete:'.cyan
Log.put "'Robin Smith'.delete('n')"
Log.put "'BukkkkooOO!'.delete('oOO!')"
puts


puts 'Dump can be used to show printable representations of characters that may ordinarily be invisible or print
differently:'.cyan
Log.put "'Listen: ' << '\007\007\007'.dump"
Log.put "'abc\t\tdef\tghi\n\n'.dump"
Log.put "'Double quote: \"'.dump"
puts


puts 'Calculate successor of string:'.cyan
Log.put "'Robin Smith'.succ"
Log.put "'Robin Smith'.succ.succ"
Log.put "'Robin Smith - 27'.succ"
Log.put "'Robin Smith - 27'.succ.succ"
puts


puts 'The Cyclic Redundancy Checksum (CRC) is a well-known way of obtaining a “signature” for a file or other
collection . The CRC has the property that the chance of data being changed and keeping the same CRC is 1 in 2**N,
where N is the number of bits in the result (most often 32 bits). The zlib library, created by Ueno Katsuhiro,
enables you to do this. The method crc32 computes a CRC given a string as a parameter. A previous CRC can be
specified as an optional second parameter; the result will be as if the strings were concatenated and a single CRC
was computed. This can be used, for example, to compute the checksum of a file so large that we can only read it in
chunks.'.cyan
Log.put "crc32('Hello')"
Log.put "crc32(' World!', crc32('Hello'))"
Log.put "crc32('Hello World!')"