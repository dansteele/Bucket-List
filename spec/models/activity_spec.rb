require 'rails_helper'

RSpec.describe Activity, :type => :model do
  it {should belong_to :destination}
  it {should have_many :bucket_list_items}

  describe "Geocoding and Activity" do
    before do
      @india = Destination.create!(:name => "India")
      @activity = Activity.create!(:name => "Ride an Elephant", 
        :location => "Bombay", :destination => @india)
    end

    it "geocodes the activity using the location and the destination" do
      expect(@activity.latitude.round(7)).to eq BigDecimal.new(19.0759837, 9)
      expect(@activity.longitude.round(7)).to eq BigDecimal.new(72.8776559, 9)
    end

    it "generates an input string for us with the Google API" do
      expect(@activity.send(:geocode_input)).to eq ("Bombay, India")
    end

  end
end
