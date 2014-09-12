require 'logger'

class AppLogger

  @@loggers = nil


  def initialize(*loggers)
    loggers = *loggers
    if @@loggers.nil? and !(loggers.nil?)
      @@loggers = *loggers
    end
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


  def error(msg)
    log(:error, msg)
  end


  def fatal(msg)
    log(:fatal, msg)
  end


  def level(level)
    @@loggers.each do |logger|
      logger.level = level
    end
  end


  def exception(e, msg=nil)
    unless msg.nil?
      msg = "#{msg}: "
    end
    log(:error, "#{msg}#{e.message}\n#{e.backtrace.join("\n")}")
  end

end