#!/usr/bin/env ruby

# Ways to execute shell commands.
# The difference between all versions is explained here:
# http://stackoverflow.com/questions/6338908/ruby-difference-between-exec-system-and-x-or-backticks

`echo hello Robin!`

exec("echo hello Robin!")

system("echo hello Robin!")

%x[echo hello Robin!]