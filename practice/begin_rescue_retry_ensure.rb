#!/usr/bin/env ruby

# Ruby's try/catch!

retries = 0
begin
  i_am_not_defined
rescue Exception => e
  puts "e.message: #{e.message}"
  puts "e.backtrace: #{e.backtrace}"
  if (retries < 5)
    retries += 1
    retry
  end
ensure
  puts "ensure this!"
end