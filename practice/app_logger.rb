require 'logger'

class AppLogger

  @@loggers


  def initialize(*loggers)
    @@loggers = *loggers
  end


  def log(method, msg)
    @@loggers.each do |logger|
      logger.send(method, msg)
    end
  end

  def debug(msg)
    log(:debug, msg)
  end


  def info(msg)
    log(:info, msg)
  end


  def warn(msg)
    log(:warn, msg)
  end


  def error(err)
    log(:error, "#{err.message}\n#{err.backtrace.join("\n")}")
  end


  def fatal(msg)
    log(:fatal, msg)
  end


  def level(level)
    @@loggers.each do |logger|
      logger.level = level
    end
  end


end