json.array!(@projtalks) do |projtalk|
  json.extract! projtalk, :id, :user_id, :project_id, :name
  json.url projtalk_url(projtalk, format: :json)
end
