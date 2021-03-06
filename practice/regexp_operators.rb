#!/usr/bin/env ruby

$LOAD_PATH << '.'

require "#{ENV['RUBY_HOME']}/lib/log.rb"


Log.cyan "^ - Beginning of line or string:"
Log.put "'\n\nRobin Smith'.match(/^Robin.*/)"
puts

Log.cyan "$ - End of line or string:"
Log.put "'Robin Smith Smith\n'.match(/Smith$.*/)"
puts

Log.cyan ". - Any character except newline (unless multiline):"
Log.put "'Robin Buko\nSmith'.match(/.*/)"
puts

Log.cyan "\\w - Word character (digit, letter or underscore):"
Log.put "'Robin_Buko27 Smith'.match(/\\w*/)"
puts

Log.cyan "\\W - Non-word character:"
Log.put "'  ,/.Robin_Buko27 Smith'.match(/\\W*/)"
puts

Log.cyan "\\s - Whitespace character:"
Log.put "'Robin_Buko27 Smith'.match(/\\s.*/)"
puts

Log.cyan "\\S - Non-whitespace character:"
Log.put "'Robin_Buko27 Smith'.match(/\\S*/)"
puts

Log.cyan "\\d - Digit (same as [0-9]):"
# [\\d]* doesn't work because it's same as [0-9]* and also i think * only operates on regex class []
Log.put "'Robin_Buko27 Smith'.match(/\\d/)"
puts

Log.cyan "\\D - Non-digit:"
Log.put "'Robin_Buko27 Smith'.match(/\\D*/)"
puts

Log.cyan "\\h - Hexadecimal digit (same as [0-9a-f]):"
Log.put "'Robin_Buko 1b Smith'.match(/\\h/)"
puts

Log.cyan "\\H - Non-hexadecimal digit:"
Log.put "'Robin_Buko1b Smith'.match(/\\H\\H/)"
puts

Log.cyan "A - Beginning of string:"
Log.put "'Robin Smith'.match(/\\ARobin.*/)"
puts

Log.cyan "Z - End of string or before newline at the end:"
Log.put "'Robin Smith Smith\n'.match(/Smith\\Z.*/)"
puts

Log.cyan "\\z - End of string:"
Log.put "'Robin Smith Smith'.match(/Smith\\z.*/)"
puts

Log.cyan "\\b - Word boundary (used outside [] only):"
Log.put "'Robin SmithSmith'.match(/h\\b.*/)"
puts

Log.cyan "\\B - Non-word boundary:"
Log.put "'Robin SmithSmith'.match(/h\\B.*/)"
puts

Log.cyan "\\b - Backspace (inside [] only):"
Log.put "'Ro\bbin'.match(/[\b].*/)"
puts

Log.cyan "[] - Single character of character set:"
Log.put "'RobinSmith!?'.match(/[n]/)"
# Log.put '"!?".match(/[?!]*/)'
puts

Log.cyan "? Zero or one of previous sub-expression:"
Log.put "'Robinnnnnnnn'.scan(/n?/)"
puts

Log.cyan "* - Zero or more of previous sub-expression (note that it matches ZERO of the expression too!):"
Log.put "'RobinSmith!?'.match(/n*/)"
Log.put "'RobinSmith!?'.scan(/n*/)"
Log.put "'RobinSmith!?'.scan(/R*/)"
puts

Log.cyan "*? - Zero or more of previous sub-expression (non-greedy - i.e. matches zero first):"
Log.put "'RRRRRRobinSmith!?'.match(/R*?/)"
puts

Log.cyan "+ - One or more of previous sub-expression:"
Log.put "'Robinnnn Smith!?'.match(/n+/)"
puts

Log.cyan "+? - One or more of previous sub-expression (non-greedy):"
Log.put "'Robinnnn Smith!?'.match(/n+?/)"
puts

Log.cyan "{m,n} m to n instances of previous sub-expression:"
Log.put "'Robinnnnnnnn'.scan(/n{0,3}/)"
Log.put "'Robinnnnnnnn'.scan(/n{1,3}/)"
Log.put "'Robinnnnnnnn'.scan(/n{,3}/)"
Log.put "'Robinnnnnnnn'.scan(/n{3,}/)"
puts

Log.cyan "{m,n}? m to n instances of previous sub-expression (non-greedy):"
Log.put "'Robinnnnnnnn'.scan(/n{1,3}?/)"
puts

Log.cyan "| - Or operator:"
Log.put "'Robin Smith'.match(/Smith|Robin/)"
puts

Log.cyan "(?=) - Positive look-ahead:"
Log.put "'Robin Smith'.match(/i(?=t).*/)"
puts

Log.cyan "(?!) - Negative look-ahead (means NEGATION! relating to what lies ahead!!):"
Log.put "'Robin Smith'.match(/i(?!n).*/)"
puts

Log.cyan "(?<=) - Positive look-behind:"
Log.put "'Robin Smith'.match(/(?<=m)i.*/)"
Log.maganda "I.e. this pattern is behind it."
puts

Log.cyan "(?<!) - Negative look-behind:"
Log.put "'Robin Smith'.match(/(?<!b)i.*/)"
Log.maganda "I.e. this pattern is NOT behind it."
puts

Log.cyan "() Grouping of sub-expressions:"
Log.put "'Robin Smith!!!'.match(/(Smith|Robin)!+/)"
puts

Log.cyan "(?>) - Embedded sub-expression. Note that this notation is possessive — that is, it is greedy,
and it does not allow backtracking into the subexpression."
Log.put "'abcdef'.match(/(?>abc)(?>def)/).to_a"
puts


Log.cyan "(?:) - Non-capturing group:"
Log.put "'a123b45c678'.sub(/(a\\d+)(?:b\\d+)(c\\d+)/, '1st=\\1, 2nd=\\2, 3rd=\\3')"
Log.maganda "In the preceding example, the second grouping was thrown away, and what was the third submatch became the
second."
puts


Log.cyan "(?imx-imx) - Turn options on/off henceforth. A question mark followed by one or more options “turns on” those
options for the remainder of the regular expression. A minus sign preceding one or more options “turns off” those
options:"
Log.put "'abcdef'.match(/abc(?i)def/)"
Log.put "'abcDEF'.match(/abc(?i)def/)"
Log.put "'ABCdef'.match(/abc(?i)def/)"
Log.put "'abcdef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abCDef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'ABcdef'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abcdEF'.match(/ab(?i)cd(?-i)ef/)"
Log.put "'abcdEF'.match(/abc(?i-m).*/m)"
Log.maganda "For last part of regex, turn on case sensitivity, turn off multiline"
puts


Log.cyan "(?imx-imx:expr) - Turn options on/off for this expression."
Log.put "'abCDef'.match(/ab(?-i:cd)ef/i)"
Log.maganda "This fails to match because we've turned case-sensitivity back on for the only characters that were
capitalized in the string!"
puts


Log.cyan "(?<>) - Named match operator:"
Log.put "'Now is the the time for all...'.match(/\\s+(?<robin>\\w+)\s+\\k<robin>\\s+/)"
Log.maganda "The sub-expression (/\\s+(\\w+) is given the name 'robin' by the use of the ?<robin> operator."
puts

Log.cyan "(?#) - Comment:"
Log.put "'Now is the the time for all...'.match(/\\s+(?<robin>\\w+)(?#HELLO ROBIN!)\s+\\k<robin>\\s+/)"
Log.maganda "The sub-expression (/\\s+(\\w+) is given the name 'robin' by the use of the ?<robin> operator."
