class SubmittalsController < ApplicationController

	def submit
		Submittal.submittal_email(current_user.artist_statements.first, nil, nil, current_user.opportunities.first, current_user, nil).deliver
		redirect_to authenticated_root_path
	end


end

 