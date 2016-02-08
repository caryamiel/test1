json.extract! @task,:tmembers, :id, :name, :descriptions, :startDate, :dueDate, :task_priority, :task_confirmation, :task_prerequisite
json.taskmemberships @task.taskmemberships, :id, :user_id, :task_id, :tmember

 json.subtasks @task.subtasks do |subtask|
    json.(subtask, :id, :name,:subtask_confirmation)
 end

 json.comments @task.comments, :user,:id,:user_id, :content,:user_avatar