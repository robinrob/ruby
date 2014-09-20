#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'
require 'digest'


Log.put "Digest::SHA256.hexdigest('Robin')"
Log.put "Digest::SHA256.base64digest('Robin')"
Log.put "Digest::SHA256.digest('Robin')"