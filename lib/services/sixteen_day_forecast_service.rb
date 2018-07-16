# require "httparty"
# require "json"
# require "faker"
#
# class SingleCityWeather
#
#   include HTTParty
#
#   def initialize
#     @api_key = "0cc43960f2a60b82a42b7cf83d2d2fe3"
#     @city2 = JSON.parse(self.class.get("https://api.openweathermap.org/data/2.5/forecast?q=London,us&mode=xml"))
#   end
#
#   def print_result
#     puts @city2
#   end
#
# end
