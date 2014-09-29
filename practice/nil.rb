#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class Thing
  def nil?
    true
  end
end


thing = Thing.new

if thing
  puts "Yup"
else
  puts "No."
end