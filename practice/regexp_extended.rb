#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# [ '409 W Jackson Ave',           'No. 27 Grande Place',
#   '16000 Pennsylvania Avenue',   '2367 St. George St.',
#   '22 Rue Morgue',               '33 Rue St. Denis',
#   '44 Rue Zeeday',               '55 Santa Monica Blvd.',
#   '123 Main St., Apt. 234',      '123 Main St., #234',
#   '345 Euneva Avenue, Suite 23', '678 Euneva Ave, Suite A'].each do |address|
#
#   puts address.match(/ ^                  # Beginning of string
#           ((No\.?)\s+)?      # Optional: No[.]
#           \d+ \s+            # Digits and spacing
#           ((\w|[.'-])+       # Street name... may be
#            \s*               #   multiple words.
#           )+
#           (,\s*              # Optional: Comma etc.
#            (Apt\.?|Suite|\#) # Apt[.], Suite, #
#            \s+               # Spacing
#            (\d+|[A-Z])       # Numbers or single letter
#           )?
#           $                  # End of string
#         /x)
# end
#
# puts

Log.cyan <<END
In this example, each address consists of three parts—a number, a street name, and an optional suite or apartment
number. I’m making the arbitrary rules that there can be an optional No. on the front of the number,
and the period may be omitted. Likewise let’s arbitrarily say that the street name may consist of ordinary word
characters but also allows the apostrophe, hyphen, and period. Finally, if the optional suite number is used,
it must be preceded by a comma and one of the tokens Apt., Suite, or # (number sign).
END
Log.put "[ '409 W Jackson Ave',           'No. 27 Grande Place',
  '16000 Pennsylvania Avenue',   '2367 St. George St.',
  '22 Rue Morgue',               '33 Rue St. Denis',
  '44 Rue Zeeday',               '55 Santa Monica Blvd.',
  '123 Main St., Apt. 234',      '123 Main St., #234',
  '345 Euneva Avenue, Suite 23', '678 Euneva Ave, Suite A'].each do |address|

  address.match(/
          ^                     # Beginning of string
          ((No\\.?)\\s+)?       # Optional: No[.]
          \\d+ \\s+              # Digits and spacing
          ((\\w|[.'-])+         # Street name... may be
           \\s*                 #   multiple words.
          )+
          (,\\s*                # Optional: Comma etc.
           (Apt\\.?|Suite|\\#)  # Apt[.], Suite, #
           \\s+                  # Spacing
           (\\d+|[A-Z])         # Numbers or single letter
          )?
          $                     # End of string
        /x)
end"