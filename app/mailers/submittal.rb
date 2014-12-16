class Submittal < ActionMailer::Base
  default from: "jgomez.artist@gmail.com"

    def submittal_email(artist_statement, images, resume, opportunities, user, view)
    @artist_statement = artist_statement
    @user = user
    @images = images
    @resume = resume
    @opportunity = opportunities
    email_with_name = "jgomez.artist@gmail.com"
    attachments['pastels_lores.jpg'] = File.read('app/assets/images/pastels_lores.jpg')
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