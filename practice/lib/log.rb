require 'colorize'


module Log
  def self.put(code)
    puts "#{code}: ".green << "#{eval code}".yellow
  end
end