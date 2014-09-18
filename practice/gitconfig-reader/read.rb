#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'reader2'


Reader2.new().read(ARGV[0]).inspect