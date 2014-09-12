#!/usr/bin/env ruby

require 'colorize'

puts Math.methods

def put_methods(name)
  puts "#{name}:".green
  puts Math.send(name).join("\n").yellow
end

def puts_all_methods(names)
  names.each do |name|
    put_methods(name)
  end
end

names = ['instance_methods',
         'public_instance_methods',
         'protected_instance_methods',
         'private_instance_methods',
         'singleton_methods',
         'protected_methods',
         'private_methods',
         'public_methods'
        ]
        
puts_all_methods(names)