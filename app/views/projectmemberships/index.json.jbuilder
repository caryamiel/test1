json.array!(@projectmemberships) do |projectmembership|
  json.extract! projectmembership, :id, :user_id, :projectmembership_id, :project_id
  json.url projectmembership_url(projectmembership, format: :json)
end
