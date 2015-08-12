class FixDefaultValue < ActiveRecord::Migration
  def change
    change_column :audiences, :highschool, :boolean, :default => false
    change_column :audiences, :undergraduate, :boolean, :default => false
    change_column :audiences, :postgraduate, :boolean, :default => false
    change_column :audiences, :community, :boolean, :default => false
  end
end
