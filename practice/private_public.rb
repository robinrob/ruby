#!/usr/bin/env ruby

class Robin
  private
  def name
    puts "Robin!"
  end
  
  public :name
end

Robin.new().name