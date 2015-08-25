json.array!(@listings) do |listing|
  json.extract! listing, :id, :listing_type, :title, :short_description, :long_description, :contact_name, :contact_email, :contact_phone, :website, :start_time, :end_time, :ticket_required, :official_hastag, :facebook_url, :twitter_handle, :instagram_handle, :job_category, :job_type, :salary, :organisation_id, :street_address, :suburb, :state, :postcode
  json.url listing_url(listing, format: :json)
end
