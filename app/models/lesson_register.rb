class LessonRegister < ActiveRecord::Base
	belongs_to :user
	belongs_to :lesson
end
