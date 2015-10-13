class AddDatePublishedToNews < ActiveRecord::Migration
  def change
    add_column :news, :date_published, :datetime
  end
end
