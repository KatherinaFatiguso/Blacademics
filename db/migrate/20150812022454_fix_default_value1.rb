class FixDefaultValue1 < ActiveRecord::Migration
  def change
    change_column :categories, :highschool, :boolean, :default => false
    change_column :categories, :undergraduate, :boolean, :default => false
    change_column :categories, :postgraduate, :boolean, :default => false
    change_column :categories, :employment, :boolean, :default => false
    change_column :categories, :community, :boolean, :default => false
  end
end
