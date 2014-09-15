#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# A way to change behaviour of comparison operator <=> on an object to define a custom sort:

class String

  alias old_compare <=>

  def <=>(other)
    a = self.dup
    b = other.dup

    # Remove punctuation
    a.gsub!(/[\,\.\?\!\:\;]/, "")
    b.gsub!(/[\,\.\?\!\:\;]/, "")

    # Remove initial articles
    a.gsub!(/^(a |an |the )/i, "")
    b.gsub!(/^(a |an |the )/i, "")

    # Remove leading/trailing whitespace
    a.strip!
    b.strip!

    # Use the old <=>
    a.old_compare(b)
  end

end



# If the sort method you want to use already exists as a built-in function, you can do this instead:


# This is just a switch i am using so only one of these approaches gets defined!
if ENV['METHOD'] == "1"

  class String
    def <=>(other)
      casecmp(other)
    end
  end

else

  class String
    alias <=> casecmp
  end

end


class String
  def ==(other)
    casecmp(other) == 0
  end
end