#!/usr/bin/env ruby

# Argument lists can be expanded using *

def things(*things)
  puts *things.join(" ")
end

things("Hello", "Robin!")