class MainController < ApplicationController
	include LessonsHelper

	def home
		@user = User.new
		@users = User.order('score DESC').all
		@courses = Course.all
		
		if current_user
			last_registered_lesson = current_user.lessonRegisters.order('updated_at DESC').first
			if last_registered_lesson
				@current_lesson = find_next_lesson(last_registered_lesson.lesson)
			end
		end
	end 

end
