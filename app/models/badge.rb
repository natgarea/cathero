class Badge < ActiveRecord::Base
	has_many :users
	belongs_to :course
	belongs_to :lesson
end
