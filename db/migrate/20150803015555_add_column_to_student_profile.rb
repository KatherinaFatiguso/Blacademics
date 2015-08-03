class AddColumnToStudentProfile < ActiveRecord::Migration
  def change
    add_column :student_profiles, :work_history, :text
  end
end
