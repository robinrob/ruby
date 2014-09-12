#!/usr/bin/env ruby

require 'logger'

# logger = Logger.new(STDERR)
logger = Logger.new(STDOUT)

# logger = Logger.new('foo.log', 'daily')

logger.level = Logger::DEBUG

logger.datetime_format = "%Y-%m-%d %H:%M:%S"

logger.fatal { "Argument 'foo' not given." }

# Message as a string.

logger.error "Argument #{ @foo } mismatch."

# With progname.

logger.info('initialize') { "Initializing..." }

# With severity.

logger.add(Logger::FATAL) { 'Fatal error!' }

# The block form allows you to create potentially complex log messages, but to delay their evaluation until and unless the message is logged. For example, if we have the following:

logger.debug { "This is a #{:potentially} expensive operation" }

# If the logger’s level is INFO or higher, no debug messages will be logged, and the entire block will not even be evaluated. Compare to this:

logger.debug("This is a #{:potentially} expensive operation")

# Here, the string concatenation is done every time, even if the log level is not set to show the debug message.

logger.close