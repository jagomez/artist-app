class OpportunitiesController < ApplicationController	
	def index
  		@opportunity = Opportunity.all
  		@opportunity = Opportunity.new
	end
	def new
		@opportunity = Opportunity.new
	end
	def create
		@opportunity = current_user.opportunities.new(opportunity_params)
		if @opportunity.save
			
			flash[:success] = "Call for Artist successfully added."
	    	redirect_to opportunity_path(@opportunity.id)
		else
		render 'new'
		end
	end 

	def show
		@opportunity = current_user.opportunities.new
	end 

	
	private
	def opportunity_params
		return params.require(:opportunity).permit(:projectname, :project_scope, :deadline)	
	end
	

end
