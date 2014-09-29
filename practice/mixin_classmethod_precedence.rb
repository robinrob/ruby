#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put '2 * 3'


# Mixin methods do not override class methods:
class FixNum
  def *(other)
    self ** other
  end
end


Log.put '2 * 3'