#!/usr/bin/env ruby

class MissingMethod
  def method_missing(*args)
    puts "Method ##{args[0]} is missing!"
    puts "args: #{args[1..-1]}"
  end
end

MissingMethod.new.robin("Smith", "is", "awesome!")