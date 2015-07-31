json.array!(@awards) do |award|
  json.extract! award, :id, :title, :organisation, :year_received, :student_profile_id
  json.url award_url(award, format: :json)
end
