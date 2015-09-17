class AddFullNameToStudentProfile < ActiveRecord::Migration
  def change
    add_column :student_profiles, :full_name, :string
  end
end
