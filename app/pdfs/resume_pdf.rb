class ResumePdf < Prawn::Document


  def initialize(user, view)
    super()
    font ("#{Rails.root}/app/assets/fonts/georgia.ttf") do
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
        	self.line_width = 0.125 
        	self.cap_style = :round
        	stroke do
        		line [500, 570], [0, 570]
        end
        	
	
        move_down 25
        
        formatted_text [ :text => "Education:", :align => :left, :leading => 5
        ]
        user.educations.each do |education|
            move_down 3
            font_size 12
        	education.school
        	education.degree
        	education.year
            text "#{education.school}, #{education.degree}, #{education.year}", :leading => 2
        end

        move_down 25
        formatted_text [ :text => "Past Shows:", :align => :left, :leading => 5]
        user.experiences.each do |experience|
            move_down 3
            font_size 12
        	experience.year
        	experience.title
            text "#{experience.year}, #{experience.title}", :align => :left, :leading => 2
        end
    end 
  end
end