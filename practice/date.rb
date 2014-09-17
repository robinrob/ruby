#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'date'
require 'date_mixin'
require 'lib/log'


Log.put "Date.new(2001,2,3)"
Log.put "Date.jd(2451944)"
Log.put "Date.ordinal(2001,34)"
Log.put "Date.commercial(2001,5,6)"
Log.put "Date.parse('2001-02-03')"
Log.put "Date.strptime('03-02-2001', '%d-%m-%Y')"

date = Date.today()
Log.put "Date.today().strftime('%Y-%m-%d %H:%M:%S')"

Log.put "Time.new(2001,2,3).to_date   #=> #<Date: 2001-02-03 ...>"

Log.put "Date.today().dayname"
Log.put "Date.today().abbr_dayname"

Log.put "Date.today() - 1"
$LOAD_PATH << '.'