class WeatherService

  def self.temperature(city:)
    open_weather_key = AirborneWeatherStatuses::Application.credentials.open_weather_key
    conn = Faraday.new(
      url: 'https://api.openweathermap.org/data/2.5/weather',
      params: {
        q: city,
        units: 'metric',
        APPID: open_weather_key,
      },
    )
    body = JSON.parse(conn.get.body)
    # binding.pry

    begin
      if body["message"] == "city not found"
        Rails.logger.warn("WeatherService.temperature not found for #{city}")
      else
        body["main"]["temp"].round
      end
    rescue => e
      binding.pry
      p :tonko

    end

  end

end
