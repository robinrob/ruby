#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'date'
require 'date_mixin'

puts Date.new(2001,2,3)           #=> #<Date: 2001-02-03 ...>
puts Date.jd(2451944)             #=> #<Date: 2001-02-03 ...>
puts Date.ordinal(2001,34)        #=> #<Date: 2001-02-03 ...>
puts Date.commercial(2001,5,6)    #=> #<Date: 2001-02-03 ...>
puts Date.parse('2001-02-03')     #=> #<Date: 2001-02-03 ...>
puts Date.strptime('03-02-2001', '%d-%m-%Y')

date = Date.today()
puts date.strftime('%Y-%m-%d %H:%M:%S')
                             #=> #<Date: 2001-02-03 ...>
puts Time.new(2001,2,3).to_date   #=> #<Date: 2001-02-03 ...>

puts Date.today().dayname
puts Date.today().abbr_dayname

puts Date.today() - 1