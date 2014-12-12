class Api::V1::ArtistStatementsController < ApplicationController
	def create
		@artist_statement = ArtistStatement.create(artist_statement_params)
	end
	def artist_statement_params
		return params.require(:statement).permit(:description, :statement, :user_id)
	end
	def restrict_access
		authenticate_or_request_with_http_token do |api_key, options|
		User.find_by(email: request.headers["X-User-Email"], api_key: api_key)
	end
	end
end