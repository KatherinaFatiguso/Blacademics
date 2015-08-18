class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :type
      t.string :title
      t.text :subtitle
      t.text :description
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :website
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
      t.string :job_category
      t.string :job_type
      t.string :salary
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
