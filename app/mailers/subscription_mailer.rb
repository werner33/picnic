class SubscriptionMailer < ActionMailer::Base
  default from: "jordanmmanley@gmail.com"
   
  def welcome_email(subscriber)
    @subscription = subscriber
    @picnic = Picnic.last
    @url  = "https://picnic-werner33.c9.io/picnics/#{@picnic.id}"
    mail(to: @subscription.email, subject: 'Come to a Picnic')
  end
  
end
