class RemoveFieldYearFromOrganizations < ActiveRecord::Migration
  def change
    remove_column :organizations, :year
  end
end
