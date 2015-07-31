json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :id, :title, :organisation, :year_received, :student_profile_id
  json.url scholarship_url(scholarship, format: :json)
end
