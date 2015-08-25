class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :listing_status, :string
    add_column :listings, :listing_clicks, :integer
  end
end
