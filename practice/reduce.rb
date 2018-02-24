#!/usr/bin/env ruby


sum = [1,2,3].reduce(0) {|sum, num| sum + num}
puts "sum: #{sum}"