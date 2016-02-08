json.array!(@taskmemberships) do |taskmembership|
  json.extract! taskmembership, :id, :user_id, :taskmembership_id, :task_id
  json.url taskmembership_url(taskmembership, format: :json)
end
