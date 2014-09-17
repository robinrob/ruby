#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put "Math::PI.round(6)"
Log.put "Math::PI.round(5)"
Log.put "Math::PI.round(4)"


class Float

  def round_down
    whole = self.floor
    fraction = self - whole
    if fraction == 0.5
      if (whole % 2) == 0
        whole
      else
        whole+1
      end
    else
      self.round
    end
  end

end


Log.put "(33.4).round_down"
Log.put "(33.5).round_down"
Log.put "(33.6).round_down"


class Float

  EPS = 1e-6

  def nearly_equal?(x, tolerance=EPS)
    (self-x).abs < tolerance
  end

  alias =~ :nearly_equal?

end

Log.put "(3.1416).nearly_equal? Math::PI"
Log.put "(3.1416).nearly_equal?(Math::PI, 0.001)"
Log.put "(3.1416) =~ Math::PI"


def commas(x)
  str = x.to_s.reverse
  str.gsub!(/([0-9]{3})/,"\\1,")
  str.gsub(/,$/,"").reverse
end

Log.put "commas(1234567)"