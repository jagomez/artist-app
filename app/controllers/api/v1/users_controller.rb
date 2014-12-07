class Api::V1::UsersController < ApplicationController
# respond_to :xml, :json, :html

	def index
  		@users = User.all
	end
	def show
		@user = User.find_by(id: params[:id])
	end

	def experience_params
		return params.require(:experience).permit(:title, :year, :category)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
			User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
		end
	end
end
