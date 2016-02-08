class Projtalk < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	has_many :talkresps, dependent: :destroy
end
