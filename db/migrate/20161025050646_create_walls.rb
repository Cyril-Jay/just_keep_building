class CreateWalls < ActiveRecord::Migration[5.0]
  def change
    create_table :walls do |t|
      t.string :wall_name, null: false
      t.integer :height, null: false
      t.integer :length, null: false
      t.timestamps
    end
  end
end
