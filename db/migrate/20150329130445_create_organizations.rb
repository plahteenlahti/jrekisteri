class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :year
      t.text :introduction

      t.timestamps null: false
    end
  end
end
