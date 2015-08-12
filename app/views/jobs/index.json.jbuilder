json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :subtitle, :description, :category, :location, :work_type, :salary, :organisation_id
  json.url job_url(job, format: :json)
end
