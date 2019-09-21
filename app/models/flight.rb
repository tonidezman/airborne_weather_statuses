# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  airborne_at :datetime         not null
#  city        :string           not null
#  note        :string
#  temperature :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_flights_on_city_and_airborne_at  (city,airborne_at) UNIQUE
#

class Flight < ApplicationRecord
end
