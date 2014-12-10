class Api::V1::ImagesController < ApplicationController
 	def create
		@image= image.create(image_params)
	end
	
	def image_params
		return params.require(:image).permit( :image, :title, :medium, :medium, :year, :description, :size, :user_id)
	end
	
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
			User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
		end
	end
 end