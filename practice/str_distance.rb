#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class String

  def levenshtein(other, ins=2, del=2, sub=1)
    # ins, del, sub are weighted costs
    return nil if self.nil?
    return nil if other.nil?
    dm = []        # distance matrix

    # Initialize first row values
    dm[0] = (0..self.length).collect { |i| i * ins }
    fill = [0] * (self.length - 1)

    # Initialize first column values
    for i in 1..other.length
      dm[i] = [i * del, fill.flatten]
    end

    # populate matrix
    for i in 1..other.length
      for j in 1..self.length
        # critical comparison
        dm[i][j] = [
            dm[i-1][j-1] +
                (self[j-1] == other[i-1] ? 0 : sub),
            dm[i][j-1] + ins,
            dm[i-1][j] + del
        ].min
      end
    end

    # The last value in matrix is the
    # Levenshtein distance between the strings
    dm[other.length][self.length]
  end


  def similar?(other, thresh=2)
    self.levenshtein(other) < thresh
  end

end



puts 'Levenshtein method for string distance:'.cyan
Log.put "'abcd'.levenshtein('abcd')"
puts

Log.put "'ACUGAUGUGA'.levenshtein('AUGGAA')"
puts

Log.put "'pennsylvania'.levenshtein('pencilvaneya')"
puts


Log.put <<CODE
if "polarity".similar?("hilarity", 10)
  "Electricity is funny!".yellow
end
CODE