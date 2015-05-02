class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :board_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
