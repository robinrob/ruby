#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


def do_something
  puts "PWD in do_something: #{`pwd`}"
  Dir.chdir 'lib'
  puts "PWD in do_something: #{`pwd`}"
  do_something_else do
    yield
  end
end


def do_something_else
  puts "PWD in do_something_else: #{`pwd`}"
  yield
end

do_something do
  puts "Hello!"
end