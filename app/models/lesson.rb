class Lesson < ActiveRecord::Base
	has_many :lessonregisters
	belongs_to :course, :foreign_key => "course_id", dependent: :destroy
	belongs_to :badge, :foreign_key => "badge_id"
end
