#Simple class definition with instance variables and methods!
class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  
  def name
    "#{@name}"
  end
  
  def artist
    "#{@artist}"
  end
  
  def duration
    "#{@duration}"
  end
  
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end

song = Song.new("Young Blood", "The Naked And Famous", 1.21)

printf "%s%s\n", "song: ", song

printf "%s%s\n", "song.name: ", song.name

printf "%s%s\n", "song.artist: ", song.artist

printf "%s%s\n", "song.duration: ", song.duration