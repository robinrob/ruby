#!/usr/bin/env ruby

# `yield` is used within an iterator to invoke the block with which the iterator is called

def my_while(cond)
  return unless cond
  yield
end

my_while(1 < 4) { puts "hello" }