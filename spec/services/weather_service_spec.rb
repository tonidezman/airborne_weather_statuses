require 'rails_helper'

RSpec.describe WeatherService do

  context "city temperatures", :vcr do
    it "returns ljubljana's temp" do
      temp_ljubljana = WeatherService.temperature("Ljubljana")
      expect(temp_ljubljana).to be_between(-24, 38)
    end

    it "returns Londons's temp" do
      temp_ljubljana = WeatherService.temperature("London")
      expect(temp_ljubljana).to be_between(-17, 39)
    end

    it "returns Cairo's temp" do
      temp_ljubljana = WeatherService.temperature("Cairo")
      expect(temp_ljubljana).to be_between(0, 45)
    end

  end

end
