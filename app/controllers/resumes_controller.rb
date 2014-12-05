class ResumesController < ApplicationController
	def index
  		@resume = Resume.all
	end
end
