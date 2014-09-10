#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'logger'
require 'app_logger'


LOG_FILE="log.log"
LOG = AppLogger.new(Logger.new(LOG_FILE), Logger.new(STDOUT))
LOG.level(Logger::DEBUG)

LOG.debug("Debug")
LOG.info("Info")
LOG.warn("Warning")

begin
  a
rescue Exception => e
  LOG.error(e)
end

LOG.fatal("Fatal!")