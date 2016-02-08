json.array!(@projectlogs) do |projectlog|
  json.extract! projectlog, :id, :user_id, :action, :parameter, :project_id
  json.url projectlog_url(projectlog, format: :json)
end
