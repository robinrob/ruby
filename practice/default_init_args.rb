#!/usr/bin/env ruby


class MyObj
  def init(a, b: 2, c: 3)
    @a = a
    @b = b
    @c = c
  end

  def show_args
    puts "a: #{@a}"
    puts "b: #{@b}"
    puts "c: #{@c}"
  end
end

MyObj.new(1).show_args