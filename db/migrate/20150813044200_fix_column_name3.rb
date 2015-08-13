class FixColumnName3 < ActiveRecord::Migration
  def change
    rename_column :audiences, :community, :name
  end
end
