#!/usr/bin/env ruby


str = "Robin Smith"

chars = str.scan(/./)
chars.each {|char| print char, " " }
puts

# Same as this though
chars = str.split("")
chars.each {|char| print char, " " }
puts