class CreateListingAudiences < ActiveRecord::Migration
  def change
    create_table :listing_audiences do |t|
      t.references :listing, index: true, foreign_key: true
      t.references :audience, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
