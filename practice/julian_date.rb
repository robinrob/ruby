#!/usr/bin/env ruby

require 'Date'

# puts Time.now().sec
# puts Date.today().sec
# puts Date.jd(Date.today().seconds)

secs = "1410462900"
puts DateTime.strptime(secs, "%s")
puts secs
puts DateTime.now().to_time.to_i