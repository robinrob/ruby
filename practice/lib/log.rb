require 'colorize'


module Log
  def self.put(code, terminator='')
    puts "#{code}: ".green << "#{eval code}".yellow << terminator
  end


  def self.put2(code)
    self.put(code, "\n\n")
  end


  def self.putsc(str)
    puts self.color str
  end

  private
  def self.color(str, mapping=nil)

    str.gsub!(/(?<!:):(?!:)/, 'ccccccolon')

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

    color_string.gsub('ccccccolon', ':')
  end
end