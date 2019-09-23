# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  airborne_at :datetime
#  airline     :string
#  city        :string
#  destination :string
#  flight_code :string
#  gate        :string
#  note        :string
#  status      :string
#  temperature :string
#  terminal    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  composite_flight_key  (flight_code,terminal,gate,airline,destination,airborne_at) UNIQUE
#

require 'rails_helper'

RSpec.describe Flight, type: :model do
  it "checks validations" do
    flight = build(:flight)
    expect(flight).to be_valid
  end

  it "generates city based on the destination" do
    flight = build(:flight)
    allow(flight).to receive(:get_temperature).and_return(13)
    flight.save

    expect(Flight.count).to eq(1)
    flight = Flight.first
    expect(flight.destination).to eq('LONDON LHR')
    expect(flight.city).to eq('London')
  end

  context "NoteGenerator" do
    it "saves generated note" do
      flight      = build(:flight)
      allow(flight).to receive(:get_temperature).and_return(10)
      flight.note = ""
      flight.save
      expect(Flight.count).to eq(1)
      expect(Flight.first.note).not_to eq("")
    end
  end

end
