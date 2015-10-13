json.array!(@news) do |news|
  json.extract! news, :id, :title, :published, :author, :description, :categories, :picture, :weblink, :youtube, :video, :impressions_count, :organisation_id
  json.url news_url(news, format: :json)
end
