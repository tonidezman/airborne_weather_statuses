class FlightsController < ApplicationController

  def index
    @flights = Flight.flights_with_temperature.order(updated_at: :desc).page(params[:page])
  end
end
