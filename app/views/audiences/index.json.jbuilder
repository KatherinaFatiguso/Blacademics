json.array!(@audiences) do |audience|
  json.extract! audience, :id, :pre_tertiary, :uni_prep, :ugrad_direct_access_atar_op, :ugrad_indirect_access_pathway, :ugrad_indirect_access_enabling, :ugrad_indirect_access_indigenous, :masters, :honours, :phd, :internship, :cadetship, :traineeship, :job, :event_id
  json.url audience_url(audience, format: :json)
end
