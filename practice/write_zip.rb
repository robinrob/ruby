#!/usr/bin/env ruby

require 'zip'


def zip(filename, contents)
  Zip::OutputStream.open("hello.zip") {
      |zos|
    zos.put_next_entry filename
    zos.puts contents

    # Use rubyzip or your zip client of choice to verify
    # the contents of exampleout.zip
  }
end


zip("hello.txt", "Hello Robin!")