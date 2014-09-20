#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class String

  def wrap(width)
    line = 0
    out = [""]

    str = self.dup
    input = str.gsub(/\n/," ")
    words = input.split(" ")

    while input != ""
      word = words.shift
      break if not word
      if out[line].length + word.length > width
        out[line].squeeze!(" ")
        line += 1
        out[line] = ""
      end
      out[line] << word + " "
    end

    out.each {|line| line}.join("\n")
  end
end



Log.put "'
  Robin Smith is the greatest! Robin Smith is the greatest! Robin Smith the Great! Robin Buko Smith the Pogi!
  Robin Smith is the greatest! Robin Smith is the greatest! Robin Smith the Great! Robin Buko Smith the Pogi!
  Robin Smith is the greatest! Robin Smith is the greatest! Robin Smith the Great! Robin Buko Smith the Pogi!
  Robin Smith is the greatest! Robin Smith is the greatest! Robin Smith the Great! Robin Buko Smith the Pogi!'
.wrap(30)"