json.array!(@employments) do |employment|
  json.extract! employment, :id, :title, :organisation, :year_commenced, :year_ended, :student_profile_id
  json.url employment_url(employment, format: :json)
end
