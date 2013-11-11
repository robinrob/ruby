def sayHello
  yield sayHello
  yield sayHello
end

#This is a code block:
sayHello { puts "Hello" }

def doHello
  yield doHello
  yield doHello
end

#And so is this:
doHello do
  puts "Hello"
end

sayHello()
puts "\n"
doHello()