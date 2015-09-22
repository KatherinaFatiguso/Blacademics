json.array!(@messages) do |message|
  json.extract! message, :id, :from, :to, :long_message, :status, :attachment, :user_id
  json.url message_url(message, format: :json)
end
