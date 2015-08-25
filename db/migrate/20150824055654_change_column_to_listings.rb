class ChangeColumnToListings < ActiveRecord::Migration
  def change
    remove_column :listings, :counter
    add_column :listings, :counter_cache, :integer, :default => 0
  end
end
