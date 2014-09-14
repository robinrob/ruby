#!/usr/bin/env ruby

puts (1..10) === 5
puts 5 === (1..10)
puts


puts /Hello/ === "Hello"
puts "Hello" === /Hell/
puts


def branch(val)
  case val
    when 0
      puts "First branch"
    when 1..5
      puts "Second branch"
    # This test overlaps with one above - non-executing of this branch shows that Ruby jumps to end of case statement
    # after execution of any branch.
    when 5..10
      puts "Third branch"
    else
      puts "Fourth branch"
  end
end

branch(0)
branch(5)
branch(10)
branch(99)
puts


def branch(val)
  case val
    when /Hello/
      puts "Matched regex /Hello/!"
    else
      puts "Didn't match!"
    end
end

branch("Robin")
branch("Hello")