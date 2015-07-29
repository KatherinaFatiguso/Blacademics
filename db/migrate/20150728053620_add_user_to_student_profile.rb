class AddUserToStudentProfile < ActiveRecord::Migration
  def change
    add_reference :student_profiles, :user, index: true, foreign_key: true
  end
end
