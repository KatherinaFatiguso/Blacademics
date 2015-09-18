class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :from,   null: false
      t.integer :to,   null: false
      t.text :short_message
      t.text :long_message
      t.string :status, :default => 'unread'
      t.string :attachment
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
