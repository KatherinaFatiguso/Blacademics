class RemoveColumnsFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :scschool_enabling, :boolean
    remove_column :categories, :scschool_events, :boolean
    remove_column :categories, :uni_enabling, :boolean
    remove_column :categories, :uni_aspiration, :boolean
    remove_column :categories, :uni_undergrad, :boolean
    remove_column :categories, :uni_postgrad, :boolean
    remove_column :categories, :uni_uap, :boolean
    remove_column :categories, :uni_tutor, :boolean
    remove_column :categories, :uni_events, :boolean
    remove_column :categories, :scholar_secondary, :boolean
    remove_column :categories, :scholar_tertiary, :boolean
    remove_column :categories, :scholar_bursaries, :boolean
    remove_column :categories, :scholar_grants, :boolean
    remove_column :categories, :scholar_events, :boolean
    remove_column :categories, :empl_intern, :boolean
    remove_column :categories, :empl_cadet, :boolean
    remove_column :categories, :empl_trainee, :boolean
    remove_column :categories, :empl_jobs, :boolean
    remove_column :categories, :empl_events, :boolean
    remove_column :categories, :sector_conferences, :boolean
    remove_column :categories, :sector_events, :boolean
  end
end
