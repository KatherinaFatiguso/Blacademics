class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill
      t.references :student_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
