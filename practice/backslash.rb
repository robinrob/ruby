#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.put '"\\\ "'

Log.put "'\\ '"


Log.put "'\\ '.match(/\\/)"