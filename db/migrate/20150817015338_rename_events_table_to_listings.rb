class RenameEventsTableToListings < ActiveRecord::Migration
  def change
    rename_table :events, :listings
  end
end
