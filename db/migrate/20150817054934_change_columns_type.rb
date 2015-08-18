class ChangeColumnsType < ActiveRecord::Migration
  def change
    rename_column :listings, :type, :listing_type
    remove_column :listings, :start_time
    remove_column :listings, :end_time
    add_column :listings, :start_time, :datetime
    add_column :listings, :end_time, :datetime
  end
end
