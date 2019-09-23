class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string   :note
      t.string   :city
      t.string   :temperature
      t.string   :destination, null: false
      t.datetime :airborne_at, null: false
      t.index([:destination, :airborne_at], unique: true)
      t.timestamps
    end
  end
end
