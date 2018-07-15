require "httparty"
require "json"
require "faker"

class SingleCityWeather

  include HTTParty

  base_uri "https://api.openweathermap.org/data/2.5/weather?q="

  def initialize
    @api_key = "0cc43960f2a60b82a42b7cf83d2d2fe3"
  end

  def get_response
    city = Faker::Address.city
    @city = JSON.parse(self.class.get("London&appid=#{@api_key}").body)
  end

  def print_result
    puts @city
  end

  def get_weather
    @city["weather"]
  end

end
