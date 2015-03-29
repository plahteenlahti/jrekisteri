class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :forename
      t.string :surname
      t.string :email
      t.string :city
      t.integer :phonenumber

      t.timestamps null: false
    end
  end
end
