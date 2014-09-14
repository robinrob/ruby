#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# There is a difference in binding-precedence between do-end and {}-blocks, when they are passed into methods:


def method(*args)
  puts "args to method(): #{args}"
  yield "Hello from method()!"
end


# Here, do-end binds with 'method'
method "arg1", "arg2" do |arg|
  puts "arg in do-end: #{arg}"
end
puts


def method1(*args)
  puts "args to method1(): #{args}"
  puts "Hello from method1()!"
end


def method2(*args)
  puts "args to method2(): #{args}"
  yield "Hello from method2()!"
end

# Here, {} binds 'method2', assumed to be a method
method1 "arg1", method2 { |arg| puts "arg in {}-block: #{arg}" }