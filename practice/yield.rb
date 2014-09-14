#!/usr/bin/env ruby

# This is what yield does and how to use it


def my_while(cond)
  return unless cond
  yield "Hello", "from", "my_while!"
end

my_while(1 < 4) { |*args| puts "#{args.join(' ')}" }
puts


class Iterated
  include Enumerable

  def initialize(*vals)
    @results_array = vals.to_a()
  end

  def each(&block)
    yield "Hello", "Robin", "Smith", "!"
  end
end

Iterated.new(1, 2, 3).each {|*vals| puts "vals: #{vals}" }
puts


# Any method can be passed a block, which can be referenced by yield.
def yields
  yield "Hello"
end

yields {|val| puts "#{val}"}