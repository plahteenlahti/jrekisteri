class AddFoundedToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :founded, :integer
  end
end
