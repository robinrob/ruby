def lineContains(line, exp)
  line =~ exp
end

exp = /Perl|Python/

line = "This line contains Perl!"
puts line
puts "Contains: #{exp}?"
puts lineContains(line, exp)

puts "\n"

line = "This line contains Python!"
puts line
puts "Contains: #{exp}?"
puts lineContains(line, exp)



