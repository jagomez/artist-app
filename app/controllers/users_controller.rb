class UsersController < ApplicationController
	def show
	
	end

	def edit
			@user = User.find(params[:id])
			@profile_image = current_user.profile_image.new(profile_params)
			if @profile_image.save
			flash[:success] = "Image has been added."
			redirect_to user_path(@user.id)
		else
			render 'new'
		end
	end
	def update
			@user = User.find(params[:id])
			@user.update(params[:user])
			flash[:success] = "Profile successfully edited."
			redirect_to "/"
	end
end
