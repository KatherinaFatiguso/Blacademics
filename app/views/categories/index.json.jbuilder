json.array!(@categories) do |category|
  json.extract! category, :id, :scschool_mentor, :scschool_tutor, :scschool_teen, :scschool_leader, :scschool_aspiration, :scschool_enabling, :scschool_events, :uni_enabling, :uni_aspiration, :uni_undergrad, :uni_postgrad, :uni_uap, :uni_tutor, :uni_events, :scholar_secondary, :scholar_tertiary, :scholar_bursaries, :scholar_grants, :scholar_events, :empl_intern, :empl_cadet, :empl_trainee, :empl_jobs, :empl_events, :sector_conferences, :sector_events, :event_id
  json.url category_url(category, format: :json)
end
