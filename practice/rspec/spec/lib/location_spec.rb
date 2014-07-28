require "spec_helper"

# load File.expand_path("../../../lib/location.rb", __FILE__)

describe Location do
  describe "#initialize" do
    it "sets the latitude and longitude" do
      loc = Location.new(:latitude  => 38.911268, :longitude => -77.444243)
      expect(loc.latitude).to equal(38.911268)
      expect(loc.longitude).to equal(-77.444243)
    end
    
    it "sets the latitude to 0 and longitude to 1" do
      loc = build_location(:latitude => 0, :longitude => 1)
      expect(loc.latitude).to equal(0)
      expect(loc.longitude).to equal(1)
    end
  end
  
  def build_location(options)
    Location.new(options)
  end
  
  describe "#near?" do
    it "checks whether location is near other location" do
      loc1 = build_location(:latitude => 0, :longitude => 1)
      loc2 = build_location(:latitude => 1, :longitude => 2)
      
      expect(loc1.near?(loc2)).to equal(true)
    end    
  end
end

