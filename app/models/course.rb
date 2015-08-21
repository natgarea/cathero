class Course < ActiveRecord::Base
	has_many :courseRegisters
	has_many :lessons
	belongs_to :badge
end
