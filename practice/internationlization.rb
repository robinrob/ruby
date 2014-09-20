#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'active_support'


def shorten(str)
  "#{str[0]}#{str.size - 2}#{str[-1]}"
end

puts "i18n, l10n and m17n".cyan
Log.put "shorten('internationalization')"
Log.put "shorten('localization')"
Log.put "shorten('multilingualization')"
puts


puts "The French word 'épée' refers to a kind of sword".cyan
puts "'épée' == '\\u00E9p\\u00E9e': ".green << "#{'épée' == "\u00E9p\u00E9e"}".yellow
Log.put "'épée'.length"
Log.put "'épée'.bytes"
Log.put "'épée'.bytes.length"
Log.put "'épée'.codepoints"
# Wow, this also works:
Log.put "'épée'.unpack('UUUU')"
Log.put "'épée'.codepoints.each { |codepoint| puts codepoint.to_s(16).upcase }"
puts


puts "ActiveSupport up/down case support".cyan
Log.put "'épée'.upcase"
Log.put "'épée'.capitalize"
# String class doesn't handle upper/lower case of 'special' characters!
Log.put "ActiveSupport::Multibyte::Chars.new('épée').upcase.to_s"
Log.put "ActiveSupport::Multibyte::Chars.new('épée').capitalize.to_s"
puts


puts "Normalization".cyan
Log.put "ActiveSupport::Multibyte::Chars.new('épée').normalize(:kc).bytes"
Log.put "ActiveSupport::Multibyte::Chars.new('épée').normalize(:kd).bytes"
Log.put "ActiveSupport::Multibyte::Chars.new('épée').normalize(:kc).scan(/./)"
Log.put "ActiveSupport::Multibyte::Chars.new('épée').normalize(:kd).scan(/./)"
puts


puts "Encoding conversions".cyan
Log.put "'épée'.encode('macRoman').bytes"
Log.put "'épée'.bytes"
Log.put "'épée'.encode('macRoman').encode('UTF-8') << 'épée'"
puts


# Force encoding when encoding fails
puts "Forced encoding".cyan
Log.put <<END
'begin\n"\\x8Ep\\x8Ee".encode("macRoman")\nrescue Exception => e\n"error!"\nend'
END

Log.put '"\x8Ep\x8Ee".force_encoding("macRoman").encoding'
Log.put '"\x8Ep\x8Ee".force_encoding("macRoman").valid_encoding?'
Log.put '"\x8Ep\x8Ee".force_encoding("macRoman").split("p")'
Log.put '"\x8Ep\x8Ee".force_encoding("macRoman").encode("UTF-8")'
puts


puts "Invalid encoding replacement".cyan
# Dealing with invalid coding - example replacing with unicode replacement character
Log.put '"\x8Ep\x8Ee".valid_encoding?'
Log.put '"\x8Ep\x8Ee".encode!("UTF-8", :invalid=> :replace, :undef => :replace)'
Log.put '"\x8Ep\x8Ee".encode!("UTF-8", :invalid=> :replace, :undef => :replace).valid_encoding?'