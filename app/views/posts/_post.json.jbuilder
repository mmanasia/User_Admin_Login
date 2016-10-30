json.extract! post, :id, :name, :details, :created_at, :updated_at
json.url post_url(post, format: :json)