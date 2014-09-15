#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


puts 'single-quoted string!'
puts

puts "double-quoted string!"
puts

puts %q|q-quoted \|-delimited string!|
puts

puts %Q|Q-quoted \|-delimited string!|
puts

puts %q<q-quoted, <>-delimited string!>
puts

puts %[[]-quoted string]
puts

puts %q*\*-quoted string*
puts

# I don't like the name 'here-document'.

puts <<fuck
Here-fuckument
fuck
puts

puts <<ROB
Here-ROBument
ROB
puts

def method(str1, str2)
  str1.upcase << "..." << str2.downcase
end

puts method(<<WANK1, <<WANK2)
First wankument
WANK1
Second wankument
WANK2
puts


str =  <<-EOF
  Indented here-shitument (the hyphen allows it, wtf)
EOF

puts str
puts


puts <<SQL
Apparently some editors use <<SQL as a marker for start of SQL code like SELECT * FROM Weeeeh inside a shitdoc and
provide syntax highlighting for it:
SQL
puts

puts <<RUBY
Apparently some editors use <<RUBY as a marker for start of Ruby code inside a shitdoc and provide syntax highlighting
for it.
RUBY
puts


puts <<end
Also using '<<end/end' can be useful as a shitdoc delimiter.
end