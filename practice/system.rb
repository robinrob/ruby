#!/usr/bin/env ruby

system("cd ~/")
puts File.exists?("system.rb").to_s
system("ls")