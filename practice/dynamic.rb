#!/usr/bin/env ruby


if ENV['SWITCH'] == "buko"
  def hello
    puts "Hello Robin!"
  end
elsif ENV['SWITCH'] == "alma"
  def hello
    puts "Hello Alma!"
  end
end


hello