$LOAD_PATH << '.'

require 'logger'
require 'date_addons'
require 'app_config'

class AppLogger

  @@loggers = nil
  @@secret_words = [AppConfig::HEROKU_PASS]


  def initialize(prefix="")
    if @@loggers.nil?
      @@loggers = app_loggers
    end
    @prefix = prefix
  end


  def config_logger(type)
    logger = Logger.new(type)
    if AppConfig::DEBUG
      logger.level = Logger::DEBUG
    else
      logger.level = Logger::INFO
    end
    logger.datetime_format = AppConfig::DATE_FORMAT
    logger
  end


  def log(method, msg)
    @@loggers.each do |logger|
      logger.send(method, "#{@prefix}: #{sanitize(msg)}")
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


  def exception(e, msg="")
    unless nil_or_empty?(msg)
      msg = "#{msg}: "
    end

    msg = "#{msg}#{e.message}#{e.backtrace.join("")}"
    log(:error, msg)
  end


  private
  def nil_or_empty?(str)
    if str.to_s == ''
      return true
    else
      return false
    end
  end


  def app_loggers
    [config_logger(STDOUT),
     config_logger("logs/#{DateTime.now().strftime(AppConfig::DATE_FORMAT)}.log")]
  end


  def sanitize(str)
    @@secret_words.each do |secret_word|
      safe_word = '*' * secret_word.length
      str = str.gsub(secret_word, safe_word)
    end
    str
  end

end
