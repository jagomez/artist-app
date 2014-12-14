class ResumePdf < Prawn::Document

  def initialize(user, view)
    super()
    text "Name: #{user.full_name}"
    stroke_axis
    	stroke_color "#BFEFFF"
    	self.line_width = 2 
    	self.cap_style = :round
    	stroke do
    		line [400, 670], [50, 670]

    	
	end
    text "Education:"
    user.educations.each do |education|
    	text education.school
    	text education.degree
    	text education.year
    end
    text "Past Shows:"
    user.experiences.each do |experience|
    	text experience.year
    	text experience.title
    end
  end
end