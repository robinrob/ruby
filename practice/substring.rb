#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'lib/log.rb'


# Sub-stringing and substitution - programming's oldest profession.

def put(code)
  Log.put(code)
  puts
end

put("'Robin Smith'[6,9]")
put("s='Robin Smith';s[6,9] = 'Lorenzo';s")

put("'Robin Smith'[-5,5]")
put("s='Robin Smith';s[-5,5] = 'Lorenzo';s")

put("'Robin Smith'[6..10]")
put("s='Robin Smith';s[6..10] = 'Lorenzo';s")

put("'Robin Smith'[6...11]")
put("s='Robin Smith';s[6...11] = 'Lorenzo';s")

put("'Robin Smith'[/Smith/]")
put("s='Robin Smith';s[/Smith/] = 'Lorenzo';s")

put("'Robin Smith'['Smith']")
put("s='Robin Smith';s['Smith'] = 'Lorenzo';s")

put("'Robin Smith'.match('Smith')")
put("s='Robin Smith';s.sub!(/Smith/, 'Lorenzo');s")