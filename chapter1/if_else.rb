count = 11

puts if_else 11

def if_else count
  if count > 10
    puts "Try again"
  elsif tries == 3
    puts "You lose"
  else
    puts "Enter a number"
  end
end