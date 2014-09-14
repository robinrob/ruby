#!/usr/bin/env ruby

# Example custom iterators

class Iterated1
  include Enumerable

  def initialize(*vals)
    @results_array = vals.to_a()
  end

  def each(&block)
    @results_array.each(&block)
  end
end

Iterated1.new(1, 2, 3).each do |val|
  puts val
end
puts


class Iterated2
  include Enumerable

  def initialize(*vals)
    @results_array = vals.to_a()
  end

  def each(&block)
    yield "Hello", "Robin", "Smith", "!"
  end
end

Iterated2.new(1, 2, 3).each {|*vals| puts "vals: #{vals}" }