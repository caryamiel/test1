class Talkresp < ActiveRecord::Base
	belongs_to :projtalk
	belongs_to :user
end
