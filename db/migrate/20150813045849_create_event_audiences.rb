class CreateEventAudiences < ActiveRecord::Migration
  def change
    create_table :event_audiences do |t|
      t.references :event, index: true, foreign_key: true
      t.references :audience, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
