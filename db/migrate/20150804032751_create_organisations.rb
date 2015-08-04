class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :university
      t.string :street_address_1
      t.string :street_address_2
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :website
      t.string :logo

      t.timestamps null: false
    end
  end
end
