class WeatherService
  def self.temperature(city:)
    begin
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
      return body["main"]["temp"].to_s
    rescue => e
      Rails.logger.warn("WeatherService.temperature not found for #{city}. Error: #{e}")
      return "Temperature not found."
    end
  end

end
