#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


Log.cyan "This regex matches recursively using \\g operator. It matches a preceeded by b and proceeded by same number
 of cs."
Log.put "'bbbbbbbaccc'.match(/(?<foo>a|b<foo>c)/).to_a"
Log.put "'bbbbbbbaccc'.match(/(?<foo>a|b\\g<foo>c)/).to_a"
Log.maganda "The recursion means that it recurses over the whole string (i think)"

# Log.cyan "The ability to re-invoke a subexpression makes it possible to craft recursive regular expressions. For
# example, here is one that matches any properly nested parenthesized expression. (Thanks again to Andrew Johnson.)"

# Log.put "'a * ((b-c)/(d-e) - f) * g'.match(
#       /(?            # begin named expression
#          \(                # match open paren
#          (?:               # non-capturing group
#            (?>             # possessive subexpr to match:
#               \\[()]       #  either an escaped paren
#             |              # OR
#               [^()]        #  a non-paren character
#            )               # end possessive
#            |               # OR
#            \g        # a nested parens group (recursive call)
#           )*               # repeat non-captured group zero or more
#           \)               # match closing paren
#         )                  # end named expression
#       /x
# ).to_a"



# str = "a * ((b-c)/(d-e) - f) * g"
#
# reg = /(?            # begin named expression
#          \(                # match open paren
#          (?:               # non-capturing group
#            (?>             # possessive subexpr to match:
#               \\[()]       #  either an escaped paren
#             |              # OR
#               [^()]        #  a non-paren character
#            )               # end possessive
#            |               # OR
#            \g        # a nested parens group (recursive call)
#           )*               # repeat non-captured group zero or more
#           \)               # match closing paren
#         )                  # end named expression
#       /x
# m = reg.match(str).to_a    # ["((b-c)/(d-e) - f)", "((b-c)/(d-e) - f)"]