#!/usr/bin/env ruby

require 'colorize'

def test(val)
  puts (val ? "#{val.inspect} is true".green : "#{val.inspect} is false".red)
end

test(false)
test(nil)
test("")
test(0)
test(-1)
test([])