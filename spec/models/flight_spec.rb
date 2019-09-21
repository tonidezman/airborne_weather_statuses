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

require 'rails_helper'

RSpec.describe Flight, type: :model do

  it "checks validations" do
    flight = build(:flight)
    expect(flight).to be_valid

    # tonko
    # create all validations that you thing that we should have for valid data for the flight
  end

end
