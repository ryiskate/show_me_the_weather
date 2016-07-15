require 'rest-client'
require 'json'

module ShowMeTheWeather
  class TheWeather

    def initialize
      @host = 'http://api.openweathermap.org/data/2.5'
    end
    
    def the_weather(city)
      response = RestClient.get "#{@host}/weather", {:params => {q: city, appid: ENV['OPEN_WEATHER_APPID'], units: 'metric'}}
      JSON.parse(response.body)
    end
  end
end