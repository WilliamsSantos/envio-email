class Contact < ApplicationRecord

    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming

    attr_accessor :email, :message, :name, :subject

    validates :name,
            :length => {:in => 2..50}

    validates :email,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }  

    validates :message,
            :length => {:in => 10..750}

    def initialize(attributes = {})
        attributes.each do |name, value|
            send("#{name}=", value)
        end
    end  
    
    def persisted?
        false
    end

end
