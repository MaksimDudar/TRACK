class CreateTruckrus < ActiveRecord::Migration[7.0]
  def change
    create_table :truckrus do |t|
      t.string :newtruckru

      t.timestamps
    end
  end
end
