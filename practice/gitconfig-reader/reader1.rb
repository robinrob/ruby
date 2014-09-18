class Reader1


  def initialize
  end


  def read(filename)
    sections = []
    section = []

    counter=0


    File.open(filename, "r") do |file|

      while (line = file.gets)
        line = line.strip

        if line[0] == '[' and line[1] == ']'
          unless section == ""
            sections << read_section(section)
          end
          section = [line]
        else
          section << line
        end
      end

      unless section.nil?
        sections << read_section(section)
      end

      sections

    end
  end


  def read_section(lines)
    section = {}
    lines[1..-1].each do |line|
      comps = line.split('=')

      key = comps[0].strip()
      val = comps[1].strip()

      section[key] = val
    end
    section
  end

end