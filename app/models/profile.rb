class Profile < ActiveRecord::Base
	belongs_to :user
 	has_many :friend_requests, -> { where(friendships: {approved: false}) }, :class_name => "Friendship", :foreign_key => "friend_id"
  
end
