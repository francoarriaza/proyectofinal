json.extract! forum, :id, :name, :description, :photo, :created_at, :updated_at
json.url forum_url(forum, format: :json)
