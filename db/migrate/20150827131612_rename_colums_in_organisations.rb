class RenameColumsInOrganisations < ActiveRecord::Migration
  def change
    rename_column :organisations, :name, :company_name
    rename_column :organisations, :university, :department
  end
end
