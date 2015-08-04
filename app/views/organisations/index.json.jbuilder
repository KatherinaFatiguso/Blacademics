json.array!(@organisations) do |organisation|
  json.extract! organisation, :id, :name, :university, :street_address_1, :street_address_2, :suburb, :state, :postcode, :contact_name, :contact_email, :contact_phone, :website, :logo
  json.url organisation_url(organisation, format: :json)
end
