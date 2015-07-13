class ContactMailer < ActionMailer::Base
  default from: "jordanmmanley@gmail.com"
  
  def contact_email(guest)
    @guest = guest
    @email = @guest.email
    @message = @guest.message
    mail(to: "jordanmmanley@gmail.com", subject: 'Email from new visitor')
  end
  
end


