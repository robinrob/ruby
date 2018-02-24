#!/usr/bin/env ruby


def func(a, b: 2, c: 3)
  puts "a: #{a}"
  puts "b: #{b}"
  puts "c: #{c}"
end

func(1, c: 4)