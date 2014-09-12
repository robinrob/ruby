#!/usr/bin/env ruby


pass = "abc123"

str = "fejowpfepwfkewabc123saopfk32432432"

puts str.match(pass).nil? ? false : true

puts str.gsub(pass, 'wanker')