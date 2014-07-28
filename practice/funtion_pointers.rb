#!/usr/bin/env ruby

def doit(method)
  self.send(method)
end

def print_hello()
  puts "Hello World!"
end

doit(:print_hello)