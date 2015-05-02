class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
