require_relative "services/single_city_weather_service.rb"
require_relative "services/sixteen_day_forecast_service.rb"

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

end

superClass = OpenweatherAPI.new

city = superClass.single_city_weather



values = []
city.get_coords
