class ContactMailer < ApplicationMailer
    def contact_message(contact)
        @contact = contact
        mail to: 'williamssantos1996@outlook.com', subject: 'Teste envio e-mail'
    end


end
