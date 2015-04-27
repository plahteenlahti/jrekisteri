class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :forename
      t.string :surname
      t.string :city
      t.string :status
      t.string :email

      t.timestamps null: false
    end
  end
end
