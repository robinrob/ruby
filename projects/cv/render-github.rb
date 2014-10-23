#!/usr/bin/env ruby

require 'github/markdown'

file = ARGV[0] || 'README.md'

text = GitHub::Markdown.render_gfm(File.read(file))

puts text

File.open(File.join('html', "#{file}.html"), "w") do |file|
  file.write(text)
end

