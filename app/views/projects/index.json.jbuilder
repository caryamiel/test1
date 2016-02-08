json.array!(@projects) do |project|
  json.extract! project, :id, :name, :descriptions, :startDate, :dueDate
  json.url project_url(project, format: :json)
end
