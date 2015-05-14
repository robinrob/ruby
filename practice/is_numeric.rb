#!/usr/bin/env ruby

class Object
  def numeric?
    true if Float(self) rescue false
  end
end

puts "27".numeric?
puts "a".numeric?
