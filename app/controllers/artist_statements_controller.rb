class ArtistStatementsController < ApplicationController
	def index
  		@artist_statement = ArtistStatement.all
	end

	def show
	end

	def destroy
	end

	def update
	end

	def edit
	end

	private
	def artist_statement_params
		return params.require(:artist_statement).permit(:description, :statement)	
	end
end
