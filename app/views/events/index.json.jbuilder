json.array!(@events) do |event|
  json.extract! event, :id, :title, :tagline, :description, :contact_number, :website, :accessibility, :start_time, :end_time, :occurrence, :location, :ticket_required, :official_hastag, :facebook_url, :google_plus_url, :twitter_username, :instagram_username, :organisation_id
  json.url event_url(event, format: :json)
end
