#Multiplication table
i = 0
j = 0
while i < 10
  line = ""
  while j < 10
    line = line + i * j + " "
    j = j + 1
  end
  puts line
  i = i + 1
end

#One-line while loop
while square < 1000
   square = square*square
end

#Alternatively-written using statement modifier
square = square*square  while square < 1000