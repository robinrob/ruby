#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class MyClass

  @x = 1       # A class instance variable

  def mymethod
    @x = 3     # An instance variable
    # Note that @y is not accessible here.
  end

end


puts MyClass.new.mymethod
