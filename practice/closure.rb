#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

# Closure using a Proc
def foo
  f = Proc.new { return "return from foo from inside proc" }
  f.call # control leaves foo here
  return "return from foo"
end

# Closure using a lambda
def bar
  f = lambda { return "return from lambda" }
  f.call # control does not leave bar here
  return "return from bar"
end

puts foo # prints "return from foo from inside proc"
puts bar # prints "return from bar"