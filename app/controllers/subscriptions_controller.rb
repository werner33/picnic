class SubscriptionsController < ApplicationController

    def new 
    end 
    
    def show
      @subscription = Subscription.find(params[:id])
    end 
    
    def edit
        @subscription = Subscription.find(params[:id])
    end 
    
    def create
        @subscription = Subscription.new(subscription_params)
        if @subscription.save
            flash[:notice] = "Thank you! We'll email you about the next picnic."
            SubscriptionMailer.welcome_email(@subscription).deliver!
            redirect_to root_path
        else
           flash[:alert] = "Email address is not valid. Please enter a valid email."
           redirect_to root_path
        end
    end 
    
    def update
      @subscription = Subscription.find(params[:id])    
      @subscription.update(subscription_params)
      flash[:notice] = "Thanks for updating your email."
      redirect_to root_path
    end 
    
    def destroy
        @subscription = Subscription.find(params[:id])
        @subscription.destroy
        flash[:notice] = "You've unsubscribed. Check back for upcoming picnics."
        redirect_to root_url
    end 
    private
        def subscription_params
            params.require(:subscription).permit(:email)
        end 

end
