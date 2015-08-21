class Lesson < ActiveRecord::Base
	has_many :lessonregisters
	belongs_to :course
	belongs_to :badge
end
