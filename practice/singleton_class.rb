#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# A singleton class is an anonymous class that extends an object


class Robin
  def hello
    puts "Hello i am Robin!"
  end
end

robin = Robin.new
robin.hello


# When you add a method to a specific object, Ruby inserts a new anonymous class into the inheritance hierarchy as a
# container to hold these types of methods.
class << robin
  def hello
    puts "Hello i am singleton Robin!"
  end
end

robin.hello


# This modifies what was defined previously:
def robin.hello
  puts "Hello i am the new singleton Robin!"
end

robin .hello