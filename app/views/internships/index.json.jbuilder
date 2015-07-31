json.array!(@internships) do |internship|
  json.extract! internship, :id, :title, :organisation, :year_commenced, :year_ended, :student_profile_id
  json.url internship_url(internship, format: :json)
end
