class CreateUniversityEducations < ActiveRecord::Migration
  def change
    create_table :university_educations do |t|
      t.string :degree
      t.string :field_of_study
      t.string :university
      t.string :school
      t.string :year_started
      t.string :year_ended
      t.references :student_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
