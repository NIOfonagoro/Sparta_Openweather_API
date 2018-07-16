require "httparty"
require "json"
require "faker"

class SingleCityWeather

  include HTTParty

  base_uri "https://api.openweathermap.org/data/2.5/weather?q="

  def initialize
    @api_key = "0cc43960f2a60b82a42b7cf83d2d2fe3"
    @city = JSON.parse(self.class.get("London&appid=#{@api_key}").body)
  end

  def get_response
    city = Faker::Address.city
    @city
  end

  def print_result
    puts @city
  end

  def get_weather
    @city["weather"]
  end

  def get_coords
    values = []
    @city["coord"].each do |key, value|
     values.push(value)
    end
    values
  end

  def get_visibility
   @city["visibility"]
  end
  
  def get_name
   @city["name"]
  end

  def sys_keys
    keys = []
    @city["sys"].each do |key, value|
     keys.push(key)
    end
    keys
  end

end

# now = SingleCityWeather.new
# puts now.get_coords
