class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.boolean :pre_tertiary
      t.boolean :uni_prep
      t.boolean :ugrad_direct_access_atar_op
      t.boolean :ugrad_indirect_access_pathway
      t.boolean :ugrad_indirect_access_enabling
      t.boolean :ugrad_indirect_access_indigenous
      t.boolean :masters
      t.boolean :honours
      t.boolean :phd
      t.boolean :internship
      t.boolean :cadetship
      t.boolean :traineeship
      t.boolean :job
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
