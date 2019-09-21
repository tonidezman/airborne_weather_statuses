class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string   :note
      t.string   :city, null: false
      t.integer  :temperature
      t.datetime :airborne_at, null: false
      t.index([:city, :airborne_at], unique: true)
      t.timestamps
    end
  end
end
