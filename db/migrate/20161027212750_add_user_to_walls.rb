class AddUserToWalls < ActiveRecord::Migration[5.0]
  def change
    add_reference :walls, :user, foreign_key: true
  end
end
