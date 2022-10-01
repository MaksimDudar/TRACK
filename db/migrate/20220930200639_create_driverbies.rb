class CreateDriverbies < ActiveRecord::Migration[7.0]
  def change
    create_table :driverbies do |t|
      t.string :newdriverby

      t.timestamps
    end
  end
end
