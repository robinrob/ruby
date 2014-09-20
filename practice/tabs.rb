#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


puts 'Methods for entabbing (converting spaces to tabs) and detabbing (converting tabs to spaces) strings:'.cyan
class String

  def detab(ts=4)
    str = self.dup
    while (leftmost = str.index("\t")) != nil
      space = " "*(ts-(leftmost%ts))
      str[leftmost]=space
    end
    str
  end

  def entab(ts=4)
    str = self.detab
    areas = str.length/ts
    newstr = ""
    for a in 0..areas
      temp = str[a*ts..a*ts+ts-1]
      if temp.size==ts
        if temp =~ / +/
          match=Regexp.last_match[0]
          endmatch = Regexp.new(match+"$")
          if match.length>1
            temp.sub!(endmatch,"\t")
          end
        end
      end
      newstr += temp
    end
    newstr
  end

end


Log.put "'Robin    Buko    Smith'.entab(4)"
Log.put "'Robin    Buko    Smith'.entab(4).dump"
puts
Log.put "'Robin\tBuko\tSmith'.detab(4)"
Log.put "'Robin\tBuko\tSmith'.detab(4).dump"