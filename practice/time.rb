#!/usr/bin/env ruby

#require 'time_difference'
#
#
#diff = TimeDifference.between(midnight, one).in_seconds
#
#two = one + diff
#
#puts two

require 'time'

start = Time.parse('10:00')
end_t = Time.parse('18:00')

now = Time.now()

if now > start and now < end_t
  puts "yes!"
end