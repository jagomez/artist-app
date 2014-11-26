class ImagesController < ApplicationController
	def index
  		@image = Image.all
	end
	def new
		@image= Image.new
	end
	def show
		@image = Image.find_by(:id=>params[:id])
	end
	private
	def image_params
		return params.require(:image).permit(:image, :title, :medium, :year, :description, :size)	
	end
end
