json.array!(@stories) do |story|
  json.extract! story, :id, :title, :content, :user_id, :religion_id
  json.url story_url(story, format: :json)
end
