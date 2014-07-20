#!/usr/bin/env ruby

# Call using `rake -f rake_args.rb mytask[one,two,three]`

task :mytask, [:arg1, :arg2] do |t, args|
  puts "Executing task: " + t.to_s
  puts "Args were: #{args}"
  
  puts "Arg 1: " + args[:arg1]
end