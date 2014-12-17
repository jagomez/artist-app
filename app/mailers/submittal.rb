class Submittal < ActionMailer::Base
  require 'open-uri'
  default from: "jgomez.artist@gmail.com"

    def submittal_email(artist_statement, images, resume, opportunities, user, view)
    @artist_statement = artist_statement
    @user = user
    @images = user.images
    @resume = resume
    @opportunity = opportunities
    email_with_name = "jgomez.artist@gmail.com"
    @images.each do |image|
      attachments[image.image.file.filename] = open(image.image.url).read
    end
    attachments["resume.pdf"] = ResumePdf.new(user, view_context).render #pdf.render #, filename: "#{user.full_name}_resume.pdf", type: "application/pdf", disposition: "inline"
    mail( :to => "jgomez.artist@gmail.com",
    :subject => "Submittal for #{@opportunity.projectname}"  )
   
    
  end

end
  # attachments["#{user.full_name}_resume.pdf"] = {File.read(ResumePdf.new(resume).rdender_file("#{user.full_name}_resume.pdf"))}
  # def submittal_email(artist_statement, images, resume, opportunity)
  #   @artist_statement = artist_statement
  #   @images = images
  #   @resume = resume
  #   @opportunity = opportunity
  #   mail(to: "jgomez.artist@gmail.com", subject: 'My Submittal')
  # end