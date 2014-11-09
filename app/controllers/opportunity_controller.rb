class OpportunitiesController < ApplicationController
	
	def index
  		@opportunity = Opportunity.all
  		
	end
	def new
		@opportunity = Opportunity.new
	end
	
	def show
		@opportunity = Opportunity.find_by(:id=>params[:id])

	end

	def create
		@opportunity = current_user.opportunity.new(params[:opportunity])

		if @opportunity.save
		flash[:success] = "Opportunity created successfully"
		redirect_to opportunity_path
		else
		render 'new'
		end
	end 

	

end
