json.array!(@cadetships) do |cadetship|
  json.extract! cadetship, :id, :title, :organisation, :year_commenced, :year_ended, :student_profile_id
  json.url cadetship_url(cadetship, format: :json)
end
