#Simple example of using inheritance
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

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  
  def lyrics
    "#{@lyrics}"
  end
end

song = KaraokeSong.new("Young Blood", "The Naked And Famous", 1.21, "We're only young and naieve still!")

printf "%s%s\n", "song: ", song

printf "%s%s\n", "song.name: ", song.name

printf "%s%s\n", "song.artist: ", song.artist

printf "%s%s\n", "song.duration: ", song.duration

printf "%s%s\n", "song.lyrics: ", song.lyrics