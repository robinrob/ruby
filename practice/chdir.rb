#!/usr/bin/env ruby

Dir.chdir("../")
puts File.exists?("system.rb").to_s
system("ls")

parent = Dir.pwd

Dir.chdir("practice")
Dir.chdir(parent)