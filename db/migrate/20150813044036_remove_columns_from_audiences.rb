class RemoveColumnsFromAudiences < ActiveRecord::Migration
  def change
    remove_column :audiences, :highschool, :boolean
    remove_column :audiences, :undergraduate, :boolean
    remove_column :audiences, :postgraduate, :boolean
  end
end
