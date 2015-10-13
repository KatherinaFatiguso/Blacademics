class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.boolean :published, :default => false
      t.string :author
      t.text :description
      t.string :categories
      t.string :picture
      t.string :weblink
      t.string :youtube
      t.string :video
      t.integer :impressions_count, :default => 0
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
