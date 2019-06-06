class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

      if @contact.valid?
        ContactMailer.contact_message(params[:contact]).deliver
        flash[:notice] = 'Mensagem de teste enviada com sucesso!'
        redirect_to :action => 'new'
      end
  
      render :action => 'new'
    end

end
