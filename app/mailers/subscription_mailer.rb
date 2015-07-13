class SubscriptionMailer < ActionMailer::Base
  default from: "jordanmmanley@gmail.com"
   
  def welcome_email(subscriber)
    @subscription = subscriber
    @picnic = Picnic.where('date >= ?', Date.today).order(:date).first
    @url  = "https://thepicnic.nyc/picnics/#{@picnic.id}" if @picnic
    mail(to: @subscription.email, subject: 'Come to the next picnic!')
  end
  
end
