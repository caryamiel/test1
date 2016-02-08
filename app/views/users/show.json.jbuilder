json.extract! @user, :id, :name, :user_avatar, :email ,:profile

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id, :project_confirm, :project_status,:project_color

json.joined_projects @user.joined_projects, :id, :name, :descriptions,	 :startDate, :dueDate, :project_confirm, :project_status


json.friends @user.friends do |friend|
    json.(friend, :id, :name, :user_avatar, :email, :phonenumber)
end

json.pending_friends @user.pending_friends do |pending_friend|
  	json.(pending_friend,:id,:user_avatar, :name, :email,)  
end

json.requested_friendships @user.requested_friendships do |requested_friendship|
	json.(requested_friendship,:id, :name, :user_avatar)
end 

json.friend_requests @user.friend_requests do |friend_request|
    json.(friend_request,:id, :user_id, :friend_id, :approved)

end




