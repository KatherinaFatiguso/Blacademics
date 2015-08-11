class FixColumnName2 < ActiveRecord::Migration
  def change
    change_table :audiences do |t|
      t.rename :pre_tertiary, :highschool
      t.rename :uni_prep, :undergraduate
      t.rename :ugrad_direct_access_atar_op, :postgraduate
      t.rename :ugrad_indirect_access_pathway, :community
    end
  end
end
