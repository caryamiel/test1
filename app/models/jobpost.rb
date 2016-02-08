class Jobpost < ActiveRecord::Base
	belongs_to :user
	has_many :jobcomments
end
