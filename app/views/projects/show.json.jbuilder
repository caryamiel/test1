json.extract! @project, :user, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate, :project_status,:project_color,:admin

json.pmembers @project.pmembers, :id,:name, :user_avatar


json.projectmemberships @project.projectmemberships, :id, :pmember_id, :user_id, :pmember


json.projtalks @project.projtalks do |projtalk|
  json.(projtalk, :id, :user_id, :project_id, :name)

    json.talkresps projtalk.talkresps do |talkresp|
      json.(talkresp, :id,:talkcontent)
    end
end

json.tasks @project.tasks do |task|
  json.(task, :id, :name, :descriptions,:task_priority, :startDate, :dueDate, :task_confirmation, :task_prerequisite)


	json.tmembers task.tmembers do |tmember|
		json.(tmember, :id, :name, :user_avatar)
	end	  



  json.subtasks task.subtasks do |subtask|
    json.(subtask, :id, :name,:subtask_confirmation)

  end
end