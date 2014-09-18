class GitConfigReader1


  def read(filename)
    text = `cat #{filename}`

    sections = []
    result = text.split(/(\[.*\])/)[1..-1].each_slice(2) { |s| sections << read_section(s.join.split("\n")) }

    sections
  end


  def read_section(lines)
    section = {}

    counter = 0
    lines[0..-1].each do |line|
      if counter == 0
        comps = line.gsub('[', '').gsub(']', '').split(' ')
        section['type'] = comps[0]
        if comps.length == 2 then section['name'] = comps[1] end

      elsif line.match(/.*=.*/)
        comps = line.split('=')

        key = comps[0].strip()
        val = comps[1].strip()

        section[key] = val
      end

      counter += 1
    end
    section
  end

end