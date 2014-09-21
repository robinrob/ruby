require 'colorize'


module Log
  def self.put(code, terminator='')
    puts "#{code}: ".green << "#{eval code}".yellow << terminator
  end


  def self.put2(code)
    self.put(code, "\n\n")
  end


  def self.putsc(str)
    puts self.colors str
  end


  def self.color(str='', color='white')
    puts str.send(color)
  end


  def self.cyan(str)
    color(str, 'cyan')
  end


  def self.yellow(str)
    color(str, 'yellow')
  end


  private
  def self.colors(str, mapping=nil)

    str.gsub!(/(?<!:):(?!:)/, 'colon')

    # puts str =~(/::/)
    if mapping.nil?
      mapping = {
          'white' => :white,
          'green' => :green,
          'red' => :red,
          'yellow' => :yellow,
          'blue' => :blue,
          'cyan' => :cyan,
          'magenta' => :magenta
      }
    end

    color_string = ""
    str.scanf("::%[\\w]%[\s]%[\\w\\!; ]") do |modifier, space, str|
      puts 'matched!'.yellow
      if mapping.has_key? modifier
        str = str.send(mapping[modifier])
      end
      color_string += str
    end

    color_string.gsub('colon', ':')
  end

end