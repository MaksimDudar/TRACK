class CreateDriverrus < ActiveRecord::Migration[7.0]
  def change
    create_table :driverrus do |t|
      t.string :newdriverru

      t.timestamps
    end
  end
end
