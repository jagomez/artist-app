class ArtistStatementsController < ApplicationController
	def index
  		@artist_statement = ArtistStatement.all
	end

	def show
		@artist_statement = ArtistStatement.find_by(:id=>params[:id])
	end

	def update
	end

	def edit
	end
	def destroy
		@artist_statement = ArtistStatement.find_by(:id => params[:id])
		@artist_statement.destroy
		flash[:success] = "You have successfully removed this artist statement"
		redirect_to '/artist_statements'
	end

	private
	def artist_statement_params
		return params.require(:artist_statement).permit(:description, :statement)	
	end
end
