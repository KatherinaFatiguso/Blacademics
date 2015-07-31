class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :title
      t.string :organisation
      t.string :year_received
      t.references :student_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
