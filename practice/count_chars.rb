#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# Count from set of characters
Log.put "'abracadabra'.count('a')"
Log.put "'abracadabra'.count('bdr')"
Log.put "'abracadabra'.count('abracadabra')"
puts


# Negated with ^
Log.put "'abracadabra'.count('^a')"
Log.put "'abracadabra'.count('^bdr')"
Log.put "'abracadabra'.count('^abracadabra')"
puts


# Range of characters
Log.put "'abracadabra'.count('a-d')"
Log.put "'abracadabra'.count('^a-d')"