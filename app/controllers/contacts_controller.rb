class ContactsController < ApplicationController

    def new 
        @mail = Contact.new  
    end 
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash.now[:notice] = "Thank you for your email! We'll be in touch."
            ContactMailer.contact_email(@contact).deliver!
            redirect_to root_path
        else
           flash[:alert] = "Email did not send."
           format.html {render :new}
        end
    end 
    
    private
      
      def contact_params
          params.require(:contact).permit(:name, :message, :email)
      end 
     
end
