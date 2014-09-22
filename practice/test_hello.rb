#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'

require "test/unit"


class TestHello < Test::Unit::TestCase

  def test_should_say_hello()
    msg = Hello.new.hello

    assert_equal('Hello', msg)
  end

end


class Hello

  def hello
    'Hello'
  end
end