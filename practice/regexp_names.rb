#!/usr/bin/env ruby

$LOAD_PATH << '.'

puts "MR A J PATEL, MR H JETHWA, MR J UDDIN AND MR T PATEL, R SMITH R A SMITH ROBIN SMITH MR SMITH MR O'BRIEN MRS WARRINGTON-SMITH".sub(/ AND/, '').scan(/((?:(?:MRS|MR|MS|MISS|DR) )?(?:[A-Z] )*(?:[A-Z'-]{2,}))/)