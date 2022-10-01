class CreateSemitrailers < ActiveRecord::Migration[7.0]
  def change
    create_table :semitrailers do |t|
      t.string :newsemitrailer

      t.timestamps
    end
  end
end
