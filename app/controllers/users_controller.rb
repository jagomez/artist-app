class UsersController < ApplicationController

	def index
  		@user = User.all
	end
	def show
  		@user = current_user.users.find_by(:id=>params[:id])
	end
end
