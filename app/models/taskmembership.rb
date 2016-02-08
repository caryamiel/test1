class Taskmembership < ActiveRecord::Base
	belongs_to :user
	belongs_to :task, :class_name => "Task"
	belongs_to :tmember, :class_name => "User"
end
