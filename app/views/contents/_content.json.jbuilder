json.extract! content, :id, :title, :description, :media, :emission_id, :created_at, :updated_at
json.url content_url(content, format: :json)
json.media url_for(content.media)
