class DropAudiences < ActiveRecord::Migration
  def change
    drop_table :audiences
  end
end
