class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :audiences, :name, :string
  end
end
