require 'colorize'


module Log
  def self.put(code, terminator='')
    puts "#{code}: ".green << "#{eval code}".yellow << terminator
  end

  def self.put2(code)
    self.put(code, "\n\n")
  end
end