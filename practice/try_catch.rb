#!/usr/bin/env ruby

begin
  i_am_not_defined
rescue Exception => e
  puts "e.message: #{e.message}"
  puts "e.backtrace: #{e.backtrace}"
end