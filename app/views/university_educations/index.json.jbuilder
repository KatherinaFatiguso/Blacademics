json.array!(@university_educations) do |university_education|
  json.extract! university_education, :id, :degree, :field_of_study, :university, :school, :year_started, :year_ended, :student_profile_id
  json.url university_education_url(university_education, format: :json)
end
