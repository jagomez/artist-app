class PortfoliosController < ApplicationController
	def index
  		@portfolio = Portfolio.all
	end
	def new
		@portfolio= Portfolio.new
	end
	def show
		@portfolio = Portfolio.find_by(:id=>params[:id])
	end
	private
	def portfolio_params
		return params.require(:image).permit(:image, :title, :medium, :year, :description, :size)	
	end
end
end
