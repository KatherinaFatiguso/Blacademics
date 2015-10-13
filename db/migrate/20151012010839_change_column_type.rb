class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :news, :published, :string, :default => "off"
  end
end
