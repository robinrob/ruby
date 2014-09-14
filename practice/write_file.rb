#!/usr/bin/env ruby

require 'date'

# file = File.open('logged.log', File::WRONLY | File::APPEND | File::CREAT)

DATE_FORMAT="%Y-%m-%d_%H:%M:%S"
now = DateTime.now().strftime(DATE_FORMAT)
file = File.open("written_#{now}.txt", File::WRONLY | File::CREAT)

file.write("Robin!")