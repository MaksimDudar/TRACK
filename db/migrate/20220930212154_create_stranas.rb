class CreateStranas < ActiveRecord::Migration[7.0]
  def change
    create_table :stranas do |t|
      t.string :newstrana

      t.timestamps
    end
  end
end
