class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string   :note
      t.string   :city
      t.string   :flight_code
      t.string   :terminal
      t.string   :gate
      t.string   :airline
      t.string   :destination
      t.string   :temperature
      t.string   :status
      t.datetime :airborne_at
      t.index([:flight_code, :terminal, :gate, :airline, :destination, :airborne_at], unique: true, name: :composite_flight_key)
      t.timestamps
    end
  end
end
