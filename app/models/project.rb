class Project < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	belongs_to :user


  	has_many :projectmemberships, dependent: :destroy
	has_many :pmembers, :through => :projectmemberships
	has_many :projtalks, dependent: :destroy
end
