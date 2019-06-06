class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

      if @contact.valid?
          redirect_to :action => 'new'
      end
  
      render :action => 'new'
    end

end
