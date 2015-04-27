class ChangeDateFormatInOrganization < ActiveRecord::Migration
  def change
    change_column :organizations, :year, :date
  end
end
