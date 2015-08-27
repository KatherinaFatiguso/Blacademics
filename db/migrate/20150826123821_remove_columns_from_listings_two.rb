class RemoveColumnsFromListingsTwo < ActiveRecord::Migration
  def change
    add_column :listings, :company_name, :string
    add_column :listings, :ticket_website, :string
  end
end
