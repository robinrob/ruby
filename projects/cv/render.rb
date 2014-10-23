#!/usr/bin/env ruby

require 'redcarpet'
require 'colorize'

file = ARGV[0] || 'README.md'

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       :autolink => true,
                                       :space_after_headers => true,
                                       :no_intra_emphasis => true)

text = markdown.render(File.read(file))

puts text

File.open(File.join('html', "#{file}.html"), "w") do |file|
  file.write(text)
end

