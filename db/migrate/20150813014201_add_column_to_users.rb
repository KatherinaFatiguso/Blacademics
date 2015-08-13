class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_org, :integer
  end
end
