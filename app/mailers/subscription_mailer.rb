class SubscriptionMailer < ActionMailer::Base
  default from: "jordanmmanley@gmail.com"
   
  def welcome_email(subscriber)
    @subscription = subscriber
    @picnic = Picnic.where('date >= ?', Date.today).order(:date).first
    @url  = "https://quiet-chamber-2613.herokuapp.com/picnics/#{@picnic.id}"
    mail(to: @subscription.email, subject: 'Come to a Picnic!')
  end
  
end
