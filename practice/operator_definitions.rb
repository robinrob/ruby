#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class Robin
  attr_accessor :val

  def initialize(value)
    @val = value
  end

  #
  def op(a, op, b)
    a.to_i.send(op, b.to_i)
  end
  #
  #
  def +(other)
    self + other
    # op self, :+, other
  end
  #
  #
  # def *(other)
  #   op self, :*, other
  # end
  #
  #
  # def **(other)
  #   op self, :*, other
  # end


  def to_i
    @val.to_i
  end
end


class MyClass

  def to_i
    3
  end


  def to_int
    FixNum.new(5)
  end

end


# Log.put "Robin.new('2') * Robin.new('3')"
#
# Log.put 'Robin.new(2) + Robin.new(3)'

# Log.put "robin=Robin.new('1'); smith=Robin.new('2'); robin + smith"

Log.put "robin=Robin.new('5'); a=robin+1"


# Log.put "robin=MyClass.new; a=[robin]; 1 + robin"