class CreateTruckpls < ActiveRecord::Migration[7.0]
  def change
    create_table :truckpls do |t|
      t.string :newtruckpl

      t.timestamps
    end
  end
end
