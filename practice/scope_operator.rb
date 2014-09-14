#!/usr/bin/env ruby

$VERBOSE = nil

$LOAD_PATH << '.'

require 'lib/log.rb'


CONST = 0
module Mod
  CONST = 0
  ::CONST = 1
  CONST = 2
  module SubMod
    CONST=3
  end
end

puts CONST
puts Mod::CONST
puts Mod::SubMod::CONST
puts


# It also works on classes

CONST = 0
class Class
  CONST = 0
  ::CONST = 1
  CONST = 2
  class SubClass
    CONST=3
  end
end

puts CONST
puts Class::CONST
puts Class::SubClass::CONST