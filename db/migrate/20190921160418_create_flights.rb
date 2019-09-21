class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :city
      t.string :note
      t.string :temperature
      t.string :airborne_at
      t.index([:city, :airborne_at], unique: true)
      t.timestamps
    end
  end
end
