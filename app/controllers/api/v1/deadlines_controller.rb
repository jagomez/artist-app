 class Api::V1::DeadlinesController < ApplicationController
 	def create
		@deadline= Deadline.create(deadline_params)
	end
	
	def deadline_params
		return params.require(:deadline).permit( :date, :name, :description, :status, :opportunity_id, :user_id)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
			User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
		end
	end
 end