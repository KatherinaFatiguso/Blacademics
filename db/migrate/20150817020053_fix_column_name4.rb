class FixColumnName4 < ActiveRecord::Migration
  def change
    rename_column :audiences, :event_id, :listing_id
  end
end
