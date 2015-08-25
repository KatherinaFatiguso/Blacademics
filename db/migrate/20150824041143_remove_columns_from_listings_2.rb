class RemoveColumnsFromListings2 < ActiveRecord::Migration
  def change
    remove_column :listings, :listing_status
    remove_column :listings, :listing_clicks

    add_column :listings, :status, :string, :default => 'draft'
    add_column :listings, :counter, :integer, :default => 0
  end
end
