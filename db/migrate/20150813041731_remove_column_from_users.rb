class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :current_org, :integer
  end
end
