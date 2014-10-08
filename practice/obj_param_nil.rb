#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'assert'


class Wanker
  def initialize(fucker=nil)
    assert {fucker != nil}
  end
end


Wanker.new(fucker='FUCK YOU!!!')
Wanker.new(fucker=nil)