#!/usr/bin/env ruby

# same-named variable or method - which wins?

def msg
  "It's a-me, Mario!"
end

puts msg

msg = "I'm Wario, i'm a-gunna win!"

def msg
  "It's a-me, Mario!"
end

puts msg