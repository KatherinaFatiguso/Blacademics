class AddConnectionsToStudentProfiles < ActiveRecord::Migration
  def change
    add_column :student_profiles, :connections, :integer, array: true, default: []
  end
end
