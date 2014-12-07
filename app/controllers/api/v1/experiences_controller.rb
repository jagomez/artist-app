 class Api::V1::ExperiencesController < ApplicationController
 	def create
		@experience = Experience.create(experience_params)
	end
	def experience_params
		return params.require(:experience).permit(:title, :year, :category, :user_id)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
			User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
		end
	end
 end