class ResumesController < ApplicationController

	def show
		pdf = ResumePdf.new(current_user, view_context)
	    respond_to do |format|
      		format.html
      		format.pdf do
				send_data pdf.render, filename: "#{current_user.full_name}_resume.pdf", type: "application/pdf", disposition: "inline"
			end
		end
	end

end
