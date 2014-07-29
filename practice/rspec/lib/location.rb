class Location
  
  attr_accessor :latitude, :longitude
  
  def initialize(args = {})
    @latitude = args[:latitude]
    @longitude = args[:longitude]
  end
  
  def near?(other_loc)
    ((other_loc.latitude - @latitude).abs <= 1) && ((other_loc.longitude - @longitude).abs <= 1)
  end
  
end