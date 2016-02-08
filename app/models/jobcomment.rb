class Jobcomment < ActiveRecord::Base
	belongs_to :user
	belongs_to :jobpost
end
