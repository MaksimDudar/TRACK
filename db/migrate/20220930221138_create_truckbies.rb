class CreateTruckbies < ActiveRecord::Migration[7.0]
  def change
    create_table :truckbies do |t|
      t.string :newtruckby

      t.timestamps
    end
  end
end
