 class Api::V1::OpportunitiesController < ApplicationController
 	def create
		@opportunity= Opportunity.create(opportunity_params)
	end

	def opportunity_params
		return params.require(:opportunity).permit( :projectname, :project_scope, :category, :fee, :prereq, :deadline, :entity_name, :entity_contact, :entity_phone, :entity_email, :opportunity_id, :user_id)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
			User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
		end
	end
 end



