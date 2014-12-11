class ImagesController < ApplicationController
	def index
  		@images = Image.all
  		@image = Image.new
	end
	def new
		
	end
	def create
		@image = Image.new(image_params)
		if @image.save
			flash[:success] = "Image has been added."
	    	redirect_to image_path(@image.id)
		else
		render 'new'
		end
	end 

	def show
		@image = Image.find_by(:id=>params[:id])
	end
	private
	def image_params
		return params.require(:image).permit(:image, :title, :medium, :year, :description, :size)	
	end
end

