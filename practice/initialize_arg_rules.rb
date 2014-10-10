#!/usr/bin/env ruby

$LOAD_PATH << '.'


# Look at this Wanker actually assigning the value passed for the argument 'fucker' to
# the argument 'tosser'

class Wanker

  def initialize(tosser='prick', fucker='wanker')
    puts "tosser: #{tosser.inspect}"
    puts "fucker: #{fucker.inspect}"
  end

end


Wanker.new(fucker="WANKER")

puts

# The solution to this Wanker is to use a fucking Hash to pass arguments in

class Wanker

  def initialize(wankers)
    tosser = wankers[:tosser] || 'prick'
    fucker = wankers[:fucker] || 'wanker'

    puts "tosser: #{tosser.inspect}"
    puts "fucker: #{fucker.inspect}"
  end

end


Wanker.new({:fucker => "WANKER"})