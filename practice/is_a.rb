#!/usr/bin/env ruby

class Wanker
  def initialize
  end
end

class Sean < Wanker
  def initialize
  end
end

puts Sean.new().is_a? Wanker

# #kind_of is an alias for #is_a
puts Sean.new().kind_of? Wanker