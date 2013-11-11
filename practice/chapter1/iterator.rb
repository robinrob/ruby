#Does the same as "default_variable.rb" but using really concise iterator syntax!!!
puts "Type 'Ruby' to end the loop!"
ARGF.each { |line|  print line exit(0) if line =~ /Ruby/ }