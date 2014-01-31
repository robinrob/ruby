#!/usr/bin/env ruby

require 'csv'

data = CSV.read('file.csv')
rows = []
for i in data[0]
  rows.push(i.strip())
end

puts rows