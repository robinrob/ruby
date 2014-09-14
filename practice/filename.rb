#!/usr/bin/env ruby

file = File.open('test', File::CREAT)
puts File.basename(file.path)