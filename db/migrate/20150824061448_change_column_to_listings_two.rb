class ChangeColumnToListingsTwo < ActiveRecord::Migration
  def change
    remove_column :listings, :counter_cache
    add_column :listings, :impressions_count, :integer, :default => 0
  end
end
