#!/usr/bin/env ruby

def nil_or_empty?(str)
  if str.to_s == ''
    return true
  else
    return false
  end
end

puts "''.empty?: #{''.empty?}"

# puts "nil.empty?: #{nil.empty?}"

puts "nil_or_empty?(''): #{nil_or_empty?('')}"

puts "nil_or_empty?(nil): #{nil_or_empty?(nil)}"

puts "nil_or_empty?('robin'): #{nil_or_empty?('robin')}"