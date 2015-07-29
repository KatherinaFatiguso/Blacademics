class AddColumsToStudentProfile < ActiveRecord::Migration
  def change
    add_column :student_profiles, :title, :string
    add_column :student_profiles, :letters, :string
    add_column :student_profiles, :post_nominal_titles, :string
  end
end
