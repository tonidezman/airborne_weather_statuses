# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  airborne_at :datetime         not null
#  city        :string
#  destination :string           not null
#  note        :string
#  temperature :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_flights_on_destination_and_airborne_at  (destination,airborne_at) UNIQUE
#

class Flight < ApplicationRecord
  before_save :generate_city, :get_temperature, :generate_note

  def generate_note
    msg = if temperature == 'Temperature not found.'
            "I need Temperature data."
          else
            NoteGenerator.generate_note(city: city, temperature: temperature.to_i)
          end

    self.note = msg
  end

  def get_temperature
    self.temperature = WeatherService.temperature(city: city)
  end

  private

  def generate_city
    self.city = destination&.split&.first&.capitalize
    throw(:abort) if city.nil?
  end
end
