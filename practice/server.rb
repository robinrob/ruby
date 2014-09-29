#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


class HelloWorld

  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello world!"]]
    end
end
