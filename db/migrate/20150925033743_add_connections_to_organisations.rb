class AddConnectionsToOrganisations < ActiveRecord::Migration
  def change
    add_column :organisations, :connections, :integer, array: true, default: []
  end
end
