#!/usr/bin/env ruby

$LOAD_PATH << '.'

require 'logger'
require 'app_logger'


def config_logger(type)
  logger = Logger.new(type)

  logger.level = Logger::DEBUG

  logger.datetime_format = "%Y-%m-%d %H:%M:%S"

  logger
end


def app_logger
  # file = File.open('logged.log', File::WRONLY | File::APPEND | File::CREAT)
  AppLogger.new(config_logger(STDERR),
                config_logger(STDOUT),
                config_logger('logged.log'))
end


logger = app_logger
logger.debug("Debug")
logger.info("Info")
logger.warn("Warning")
logger.error("Error!")
logger.fatal("FATAL!")
begin
  i_am_undefined
rescue Exception => e
  logger.exception(e, "Fuck")
end


logger2=AppLogger.new()
logger2.debug("Logger2: Debug")