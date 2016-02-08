json.array!(@jobposts) do |jobpost|
  json.extract! jobpost, :id, :name, :user_id, :topic
  json.url jobpost_url(jobpost, format: :json)
end
