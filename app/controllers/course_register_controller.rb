class CourseRegisterController < ApplicationController


	def join_course
		#logger.info(current_user.courses)
		registered = CourseRegister.where(user_id: current_user.id, course_id: params[:course_id])
		if registered.any?
			# Warning
			redirect_to root_url
		else
			CourseRegister.create :user_id => current_user.id, :course_id => params[:course_id]
			redirect_to lesson_url
		end
		
	end

end
