class CourseRegisterController < ApplicationController


	def join_course
		#logger.info(current_user.courses)
		registered = CourseRegister.where(user_id: current_user.id, course_id: params[:course_id])
		if registered.any?
			# Warning
			redirect_to root_url
		else
			CourseRegister.create :user_id => current_user.id, :course_id => params[:course_id]
			course = Course.find(params[:course_id])
			first_lesson = course.lessons.sort_by(&:order).first

			redirect_to lesson_path(first_lesson)
		end
		
	end

end
