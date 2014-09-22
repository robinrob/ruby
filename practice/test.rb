#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

num = '(\\d|[01]?\\d\\d|2[0-4]\\d|25[0-5])'

pat = '^(#{num}\.){3}#{num}$'

ip_pat = Regexp.new(pat)

'9.53.97.102'.match(ip_pat)