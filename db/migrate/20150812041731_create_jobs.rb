class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :category
      t.string :location
      t.string :work_type
      t.float :salary
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
