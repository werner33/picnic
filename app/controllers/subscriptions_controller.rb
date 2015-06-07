class SubscriptionsController < ApplicationController

def new 
end 

def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
        flash[:notice] = "Thank you! We'll email you about the next picnic."
        redirect_to root_path
    else
       flash[:alert] = "Email address is not valid. Please enter a valid email."
       redirect_to root_path
    end
end 

def unsubscribe
end 

  private
    def subscription_params
        params.require(:subscription).permit(:email)
    end 

end
