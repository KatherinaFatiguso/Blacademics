json.array!(@skills) do |skill|
  json.extract! skill, :id, :skill, :student_profile_id
  json.url skill_url(skill, format: :json)
end
