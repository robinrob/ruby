#!/usr/bin/env ruby

# Match a single octet component of the address ('0' to '255')
octect = /
# Single digit from 0-9 OR ...
\d |

# ('0' or '1') (optional) followed by any two digits from 0-9 OR ...
[01]?\d\d |

# '2' followed by single character from 0-4 OR ...
2[0-4]\d |

# '25' followed by any character from 0-5
25[0-5]
 /x

# Match a complete IPv4 address ('octect.octect.octet.octet')
ipv4 = /
# Beginning of line followed by ((`octect` followed by period) three times)
^(#{octect}.){3}

# Single occurence of `octect` followed by end of line
#{octect}$
/x

puts '123.255.0.10'.match(ipv4)