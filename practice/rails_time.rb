#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'



# Log.cyan "Time:"
# Log.put <<END
# ruby_methods = Time.public_instance_methods
# require 'rails'
# rails_methods = Time.public_instance_methods
# (rails_methods - ruby_methods).sort.join("\n")
# END


Log.cyan "Fixnum:"
Log.put <<END
ruby_methods = Fixnum.public_instance_methods
require 'rails'
rails_methods = Fixnum.public_instance_methods
(rails_methods - ruby_methods).sort.join("\n")
END

Log.put '5.minutes.from_now'

Log.put '5.minutes.ago'