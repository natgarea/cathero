class UsersController < ApplicationController

	def home
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
		end
		redirect_to root_url
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.order('score DESC').all
	end

	private 

	def user_params
		params.require(:user).permit(:username, :id, :email, :password, :score)
	end 

end