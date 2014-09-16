#!/usr/bin/env ruby

def put(hash)
  puts hash
end

put({"name" => "Robin", :age => "Smith"})
puts

put({name: "Robin", age: "Smith"})
puts

put(name: "Robin", age: "Smith")

hash = {name: "Robin", age: "Smith"}
puts hash.keys