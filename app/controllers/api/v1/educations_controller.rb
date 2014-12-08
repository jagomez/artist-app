class Api::V1::EducationsController < ApplicationController
	def create
		@education= Education.create(education_params)
	end
	def education_params
		return params.require(:education).permit(:school, :year, :degree, :user_id)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
		User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
	end
	end
end