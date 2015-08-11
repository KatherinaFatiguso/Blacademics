class FixColumnName < ActiveRecord::Migration
  def change
    change_table :categories do |t|
      t.rename :scschool_mentor, :highschool
      t.rename :scschool_tutor, :undergraduate
      t.rename :scschool_teen, :postgraduate
      t.rename :scschool_leader, :employment
      t.rename :scschool_aspiration, :community
    end
  end
end
