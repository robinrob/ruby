#!/usr/bin/env ruby

num = /
# Single digit from 0-9 OR ...
\d |

# ('0' or '1') (optional) followed by any two digits from 0-9 OR ...
[01]?\d\d |

# '2' followed by single digit from 0-4 OR ...
2[0-4]\d |

# '25' followed by any digit from 0-5
25[0-5]
 /x

ipv4 = /
# Beginning of line followed by ((`num` followed by period) three times)
^(#{num}.){3}

# Single occurence of `num` followed by end of line
#{num}$
/x

puts '123.255.0.10'.match(ipv4)
