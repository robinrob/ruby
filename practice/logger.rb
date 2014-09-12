#!/usr/bin/env ruby

# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/logger/rdoc/Logger.html

$LOAD_PATH << '.'

require 'logger'


logger = Logger.new(STDERR)
logger = Logger.new(STDOUT)

Create a logger for the file which has the specified name.

logger = Logger.new('logfile.log')


file = File.open('foo.log', File::WRONLY | File::APPEND)
# To create new (and to remove old) logfile, add File::CREAT like;
#   file = open('foo.log', File::WRONLY | File::APPEND | File::CREAT)
logger = Logger.new(file)

# Create a logger which ages logfile once it reaches a certain size. Leave 10 “old log files” and each file is about 1,024,000 bytes.

logger = Logger.new('foo.log', 10, 1024000)

# Create a logger which ages logfile daily/weekly/monthly.

logger = Logger.new('foo.log', 'daily')
logger = Logger.new('foo.log', 'weekly')
logger = Logger.new('foo.log', 'monthly')


# Notice the different methods (fatal, error, info) being used to log messages of various levels? Other methods in this family are warn and debug. add is used below to log a message of an arbitrary (perhaps dynamic) level.
#
# Message in block.

logger.fatal { "Argument 'foo' not given." }

# Message as a string.

logger.error "Argument #{ @foo } mismatch."

# With progname.

logger.info('initialize') { "Initializing..." }

# With severity.

logger.add(Logger::FATAL) { 'Fatal error!' }

# The block form allows you to create potentially complex log messages, but to delay their evaluation until and unless the message is logged. For example, if we have the following:

logger.debug { "This is a " + potentially + " expensive operation" }

# If the logger’s level is INFO or higher, no debug messages will be logged, and the entire block will not even be evaluated. Compare to this:

logger.debug("This is a " + potentially + " expensive operation")

# Here, the string concatenation is done every time, even if the log level is not set to show the debug message.

logger.close

# Setting severity threshold
#
# Original interface.

logger.sev_threshold = Logger::WARN

# Log4r (somewhat) compatible interface.

logger.level = Logger::INFO

DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN

# Format

# Log messages are rendered in the output stream in a certain format by default. The default format and a sample are shown below:

# Log format:

# You may change the date and time format via datetime_format=

logger.datetime_format = "%Y-%m-%d %H:%M:%S"
# e.g. "2004-01-03 00:54:26"