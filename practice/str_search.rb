#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


def put(code)
  Log.put(code)
  puts
end


put("'Robin Smith'.index(?S)")
put("'Robin Smith'.index('Smith')")
put("'Robin Smith'.index('/in')")
put("'Robin Smith'.index('?W')")
put("'Robin Smith'.index('twat')")
put("'Robin Smith'.index('/twat')")

# The method rindex (right index) starts from the righthand side of the string (that is,
# from the end). The numbering, however, proceeds from the beginning as usual:

put("'Robin Smith'.rindex(?S)")

# The include? method simply tells whether the specified substring or character occurs within the string:

put("'Robin Smith'.include? ?S")

# The scan method repeatedly scans for occurrences of a pattern. If called without a block,
# it returns an array. If the pattern has more than one (parenthesized) group, the array will be nested:

put("'abracadabra'.scan(/a./)")
put("'Acapulco, Mexico'.scan(/(.)(c.)/)")

# If a block is specified, the method passes the successive values to the block:

put("'Kobayashi'.scan(/[^aeiou]+[aeiou]/) do |x| print \"Syllable: \#{x}\n\".yellow end")