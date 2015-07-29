class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.text :bio

      t.timestamps null: false
    end
  end
end
