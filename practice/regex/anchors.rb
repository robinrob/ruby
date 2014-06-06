require 'colorize'

COL_WIDTH = 50


def print(key, value)
  printf "%-#{COL_WIDTH}s%-#{COL_WIDTH}s\n", key.to_s.blue, value.inspect.green
end


def print_regex(regex)
  print("%s =~ %s" % [regex.inspect, $STRING], regex =~ $STRING)
end


def do_regex(regexes)
  print("string", $STRING)
  puts

  regexes.each { |regex| print_regex(regex) }
  puts
end


$STRING = "abcXdefXghi"
do_regex([/def/, /abc/, /ghi/, /^def/, /def$/, /^abc/, /ghi$/])


$STRING = 'abc\ndef\nghi'
do_regex([/def/, /abc/, /ghi/, /^def/, /def$/, /^abc/, /ghi$/])

