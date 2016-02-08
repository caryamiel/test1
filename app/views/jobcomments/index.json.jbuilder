json.array!(@jobcomments) do |jobcomment|
  json.extract! jobcomment, :id, :user_id, :content
  json.url jobcomment_url(jobcomment, format: :json)
end
