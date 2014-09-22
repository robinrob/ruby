#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# Towers of Hanoi solutions. Recursive version turns out to be twice as fast.


def towers_stack(list)
  while !list.empty?
    n, src, dst, aux = list.pop
    if n == 1
      puts "Move disk from #{src} to #{dst}".yellow
    else
      list.push [n-1, aux, dst, src]
      list.push [1, src, dst, aux]
      list.push [n-1, src, aux, dst]
    end
  end
end


Log.cyan "Stack algorithm:"
towers_stack([].push [3, "a", "c", "b"])
puts


Log.cyan "Recursion algorithm:"
def towers_recursion(n, src, dst, aux)
  if n==1
    puts "Move disk from #{src} to #{dst}".yellow
  else
    towers_recursion(n-1, src, aux, dst)
    towers_recursion(1, src, dst, aux)
    towers_recursion(n-1, aux, dst, src)
  end
end

towers_recursion(3, "a", "c", "b")