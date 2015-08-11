json.array!(@categories) do |category|
  json.extract! category, :id, :highschool, :undergraduate, :postgraduate, :employment, :community, :event_id
  json.url category_url(category, format: :json)
end
