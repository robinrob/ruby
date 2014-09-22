#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# The output of this file is pure Ruby code - it can be copy-pasted into a Ruby environment and executed.

Log.cyan "Each parenthesized piece of a regular expression will be a submatch of its own. The match can be referenced
 by the GLOBAL variables $1, $2 etc:"
Log.put "if /(a\\d+)(b\\d+)(c\\d+)/ =~ 'a123b45c678' then [$1, $2, $3] end"
puts


Log.cyan "The global variables can also be used within a block passed to sub:"
Log.put "'a123b45c678'.sub(/(a\\d+)(b\\d+)(c\\d+)/)  { [$1, $2, $3] }"


Log.cyan "The results of the sub-expressions can be assigned like this in a call to sub:"
Log.put "'a123b45c678'.sub(/(a\\d+)(b\\d+)(c\\d+)/, '[one: \\1, two: \\2, three: \\3]')"
puts


Log.cyan "Sometimes you may want to regard characters as a group for purposes of crafting a regular expression; but
you may not need to capture the matched value for later use. In such a case, you can use a noncapturing group,
denoted by the (?:...) syntax:"
Log.put "'a123b45c678'.sub(/(a\\d+)(?:b\\d+)(c\\d+)/, '1st=\\1, 2nd=\\2, 3rd=\\3')"
Log.maganda "In the preceding example, the second grouping was thrown away, and what was the third submatch became the
second."
puts

Log.cyan "The MatchData object is manipulated with a bracket notation as though it were an array of matches. The
special element 0 contains the text of the entire matched string. Thereafter, element n refers to the nth match:"
Log.put "/(.+[aiu])(.+[aiu])(.+[aiu])(.+[aiu])/i.match('Fujiyama')[0]"
Log.put "/(.+[aiu])(.+[aiu])(.+[aiu])(.+[aiu])/i.match('Fujiyama')[1]"
Log.put "/(.+[aiu])(.+[aiu])(.+[aiu])(.+[aiu])/i.match('Fujiyama')[2..3]"
Log.put "/(.+[aiu])(.+[aiu])(.+[aiu])(.+[aiu])/i.match('Fujiyama').to_a.each {|x| x}"
puts


Log.cyan "The methods begin and end return the beginning and ending offsets of a match. (It is important to realize
that the ending offset is really the index of the next character after the match.)"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).begin(1)"
puts


Log.cyan "Similarly, the offset method returns an array of two numbers, which are the beginning and ending offsets of
 that match. To continue the previous example:"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).offset(0)"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).offset(1)"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).offset(2)"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).offset(3)"
puts


Log.cyan "The portions of the string before and after the matched substring can be retrieved by the instance methods
pre_match and post_match, respectively. To continue the previous example:"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/)"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).pre_match"
Log.put "'alpha beta gamma delta epsilon'.match(/(b[^ ]+ )(g[^ ]+ )(d[^ ]+ )/).post_match"