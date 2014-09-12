#!/usr/bin/env ruby

# Ruby's try/catch!

BEGIN {
  i_am_not_defined
rescue Exception => e
  puts "e.message: #{e.message}"
  puts "e.backtrace: #{e.backtrace}"
ensure
  puts "ensure this!"
END