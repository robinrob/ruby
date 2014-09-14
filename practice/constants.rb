#!/usr/bin/env ruby

# A method by which a constant can be redefined!

class Thing
  Const = "Constant!"

  def inst_method
    self.class.send(:remove_const, :Const)
    self.class.const_set(:Const, "Wanker!")
  end
end


Thing.new.inst_method

puts Thing::Const