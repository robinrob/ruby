#The gets routine has a side effect: as well as returning the line just read,
#it also stores it into the global variable $_. 
#This variable is special, in that it is used as the default argument in many circumstances.

puts "Type 'Ruby' to end the loop!"
while gets           # assigns line to $_
  if /Ruby/          # matches against $_
    print            # prints $_
    exit(0)
  end
end