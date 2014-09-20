#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'base64'


puts 'base64 is frequently used to convert machine-readable data into a text form with no special characters in it. For
example, images and fonts stored inline inside CSS files are encoded with base64. The easiest way to do a base64
encode/decode is to use the built-in Base64 module. The Base64 class has an encode64 method that returns a base64
string (with a newline appended). It also has a method decode64 that changes the string back to its original
bytes:'.cyan

Log.put "Base64.encode64('\007\007\002abdce')"
# Log.put "Base64.encode64('\007\007\002\abdce').codepoints"
Log.put "Base64.decode64(Base64.encode64('\007\007\002abdce'))"