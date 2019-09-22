class WeatherService

  def self.temperature(city)
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
    body.dig("main", "temp")&.round
  end

end
