#!/usr/bin/env ruby

require 'colorize'

# def put(code)
#   puts "#{code}: ".green << "#{eval code}".yellow
# end

msg = msg || 'Hello Robin!'

puts msg

msg = msg || 'Fuck off!'

puts msg

# nil becomes false
bool = bool || false

puts bool

# but false becomes true
bool = bool || true

puts bool