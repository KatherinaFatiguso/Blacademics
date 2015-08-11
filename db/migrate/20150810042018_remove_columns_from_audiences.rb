class RemoveColumnsFromAudiences < ActiveRecord::Migration
  def change
    remove_column :audiences, :ugrad_indirect_access_enabling, :boolean
    remove_column :audiences, :ugrad_indirect_access_indigenous, :boolean
    remove_column :audiences, :masters, :boolean
    remove_column :audiences, :honours, :boolean
    remove_column :audiences, :phd, :boolean
    remove_column :audiences, :internship, :boolean
    remove_column :audiences, :cadetship, :boolean
    remove_column :audiences, :traineeship, :boolean
    remove_column :audiences, :job, :boolean
  end
end
