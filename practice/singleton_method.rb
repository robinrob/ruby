#!/usr/bin/env ruby

class Robin
end

robin = Robin.new

# This is a 'singleton method' because it is defined on just one instance of a class. It is actually held in a
# 'metaclass' that gets created when the method is defined. All singleton methods get added to the metaclass.
# Objects themselves cannot have methods defined on them.
def robin.hello
  puts "Hello i am Robin!"
end
robin.hello


puts "Robin.new.respond_to?(:shout): #{Robin.new.respond_to?(:shout)}"


# Here is a trick that allows us to see the metaclass!

class Object
  def metaclass
    class << self
      self
    end
  end
end


code = "robin.metaclass.instance_methods.include? :hello"
puts "#{code}: #{eval code}"