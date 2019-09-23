namespace :scraper do
  desc "imports flights and temperatures from Vienna Airport"
  task :start => :environment do
    FlightsScraper.airborne_flights
  end
end
