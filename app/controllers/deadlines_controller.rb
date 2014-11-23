class DeadlinesController < ApplicationController
	def index
  		@deadline = Deadline.all
	end
	def show
		@deadline = Deadline.find_by(:id=>params[:id])
	end

private
	def deadline_params
		return params.require(:deadline).permit(:name, :description)	
	end
end
