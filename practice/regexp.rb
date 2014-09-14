#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put("'robin smith'.match(/robin/)")

Log.put("'robin smith' =~ /robin/")