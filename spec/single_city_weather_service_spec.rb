require_relative "spec_helper"

describe "OpenWeather API test" do

  context "Testing the single city weather service" do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it "shoud return the Weather key as an array" do
      expect(@city.get_weather).to be_a Array
    end

    xit "shoud return the coord as a Hash" do
      expect(@city["coords"]).to be_a Hash
    end

    it "shoud return the 2 coord values (longitude & latitude)" do
      expect(@city.get_coords.length).to eql 2
    end

    it "shoud return the coord values as floats" do
      @city.get_coords.each do |coord|
        expect(coord).to be_kind_of Float
      end
    end

    it "shoud return a longitude co-ordinates value within the range of -180 to 180" do
      @city.get_coords.each do |coord|
        expect(coord).to be_between(-180,180)
      end
    end

    it "should return visibility as a string" do
      expect(@city.get_visibility).to be_a Integer
    end

    it "should return 6 keys in the 'sys' hash" do

        expect(@city.sys_keys.length).to eq 6

    end

    it "should return a city name - London" do
      expect(@city["name"]).to eql "London"
    end

    it "should return a city name - London" do
      expect(@city.get_visibility).to be_a Integer
    end

  end

end
