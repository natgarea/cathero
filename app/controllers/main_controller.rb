class MainController < ApplicationController

	def home
		@user = User.new
		@users = User.order('score DESC').all
		@courses = Course.all
	end 

end
