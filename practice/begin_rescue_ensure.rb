#!/usr/bin/env ruby

# Ruby's try/catch!

begin
  i_am_not_defined
rescue Exception => e
  puts "e.message: #{e.message}"
  puts "e.backtrace: #{e.backtrace}"
ensure
  puts "ensure this!"
end