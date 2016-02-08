json.extract! @subtask, :id
json.subtasks @task.subtasks, :id, :name, :task_id