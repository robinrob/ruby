#!/usr/bin/env ruby


class Iterated
  include Enumerable

  def initialize(*vals)
    @results_array = vals.to_a()
  end

  def each(&block)
    @results_array.each(&block)
  end
end

Iterated.new(1, 2, 3).each do |val|
  puts val
end