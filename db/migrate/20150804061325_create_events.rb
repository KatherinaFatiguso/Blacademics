class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :tagline
      t.text :description
      t.string :contact_number
      t.string :website
      t.string :accessibility
      t.string :start_time
      t.string :end_time
      t.string :occurrence
      t.string :location
      t.string :ticket_required
      t.string :official_hastag
      t.string :facebook_url
      t.string :google_plus_url
      t.string :twitter_username
      t.string :instagram_username
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
