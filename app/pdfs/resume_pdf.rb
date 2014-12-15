class ResumePdf < Prawn::Document

  def initialize(user, view)
    super()
    font "Times-Roman"
    font_size 20
    move_down 40
    text "#{user.full_name}", :align => :center
    font_size 14
    text "#{user.address}", :align => :center
    text "#{user.city} #{user.state} #{user.zip_code}", :align => :center
    text "#{user.email}", :align => :center
    text "#{user.website}", :align => :center
    text "#{user.phone}", :align => :center
    
    stroke
    	stroke_color "#000000"
    	self.line_width = 0.5 
    	self.cap_style = :round
    	stroke do
    		line [500, 570], [0, 570]
    end
    	
	
    move_down 25
    text "Education:", :align => :left, :leading => 5, :styles => :bold
    user.educations.each do |education|
    	education.school
    	education.degree
    	education.year
        text "#{education.school}, #{education.degree}, #{education.year}", :leading => 2
    end

    move_down 25
    text "Past Shows:", :align => :left, :leading => 5
    user.experiences.each do |experience|
    	experience.year
    	experience.title
        text "#{experience.year}, #{experience.title}", :align => :left, :leading => 2
    end
    
  end
end