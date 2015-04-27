class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :founded
      t.string :description

      t.timestamps null: false
    end
  end
end
