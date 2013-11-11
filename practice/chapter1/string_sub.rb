line = "This line contains Perls: Perl, Perl!"
puts line

puts "I prefer Ruby ..."
puts line.sub(/Perl/, 'Ruby')

puts "No - all of them!"
puts line.gsub(/Perl/, 'Ruby')

