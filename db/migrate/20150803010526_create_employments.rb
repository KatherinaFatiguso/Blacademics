class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :title
      t.string :organisation
      t.string :year_commenced
      t.string :year_ended
      t.references :student_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
