class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :forename
      t.string :surname
      t.string :email
      t.string :city

      t.timestamps null: false
    end
  end
end
