class DropEventAudiences < ActiveRecord::Migration
  def change
    drop_table :event_audiences
  end
end
