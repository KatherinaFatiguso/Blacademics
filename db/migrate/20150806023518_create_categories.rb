class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.boolean :scschool_mentor
      t.boolean :scschool_tutor
      t.boolean :scschool_teen
      t.boolean :scschool_leader
      t.boolean :scschool_aspiration
      t.boolean :scschool_enabling
      t.boolean :scschool_events
      t.boolean :uni_enabling
      t.boolean :uni_aspiration
      t.boolean :uni_undergrad
      t.boolean :uni_postgrad
      t.boolean :uni_uap
      t.boolean :uni_tutor
      t.boolean :uni_events
      t.boolean :scholar_secondary
      t.boolean :scholar_tertiary
      t.boolean :scholar_bursaries
      t.boolean :scholar_grants
      t.boolean :scholar_events
      t.boolean :empl_intern
      t.boolean :empl_cadet
      t.boolean :empl_trainee
      t.boolean :empl_jobs
      t.boolean :empl_events
      t.boolean :sector_conferences
      t.boolean :sector_events
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
