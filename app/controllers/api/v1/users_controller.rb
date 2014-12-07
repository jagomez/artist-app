class Api::V1::UsersController < ApplicationController
# respond_to :xml, :json, :html

	def index
  		@users = User.all
	end
	def show
		@user = User.find_by(id: params[:id])
	end
end
