#!/usr/bin/env ruby

require 'colorize'

# Class is an Object, and Object is a Class

def put(code)
  puts "#{code}: ".green << "#{eval code}".yellow
end

put("Object.is_a? Class")

put("Object.is_a? Object")

put("Class.is_a? Class")

put("Class.is_a? Object")