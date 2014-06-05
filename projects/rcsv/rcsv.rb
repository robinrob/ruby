#!/usr/bin/env ruby

require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'pp'


# The options specified on the command line will be collected in *options*.
# We set default values here.
options = OpenStruct.new
options[:lookback] = 1
options[:search_term] = "\"\""

opt_parser = OptionParser.new do |opts|
  opts.banner = "Usage: options.rb [options]"

  opts.separator ""
  opts.separator "Specific options:"

  # Optional argument; multi-line description.
  opts.on("-f", "--file [FILENAME]",
          "Filename of CSV file to read or write.") do |filename|
    options.filename = filename
  end


  # No argument, shows at tail.  This will print an options summary.
  # Try it and see!
  opts.on("-h", "--help", "Show this message") do
    puts opts
    exit
  end
end

opt_parser.parse(ARGV)

command = "cat ~/.zhistory | tail -#{options.lookback + 1} | grep #{options.search_term}"

`#{command}`.split("\n")[0 .. -2].each do |str|
  puts str.split(";")[-1]
end#