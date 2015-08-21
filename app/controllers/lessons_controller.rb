class LessonsController < ApplicationController

	def index
		Lesson.all
	end

	def require_user 
		redirect_to '/login' unless current_user 
	end
	
	before_action :require_user, only: [:index, :show]

end
