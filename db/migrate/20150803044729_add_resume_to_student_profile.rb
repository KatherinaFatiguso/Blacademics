class AddResumeToStudentProfile < ActiveRecord::Migration
  def change
    add_column :student_profiles, :resume, :string
  end
end
