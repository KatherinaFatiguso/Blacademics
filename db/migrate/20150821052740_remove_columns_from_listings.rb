class RemoveColumnsFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :occurrence
    remove_column :listings, :location
    remove_column :listings, :google_plus_url

    rename_column :listings, :subtitle, :short_description
    rename_column :listings, :description, :long_description
    rename_column :listings, :twitter_username, :twitter_handle
    rename_column :listings, :instagram_username, :instagram_handle

    add_column :listings, :street_address, :string
    add_column :listings, :suburb, :string
    add_column :listings, :state, :string
    add_column :listings, :postcode, :string

  end
end
