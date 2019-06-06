class Contact 
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
  
    attr_accessor :name, :subject, :message, :email
  
    validates :name, :length => {:in => 2..50}
  
    validates_presence_of :email, :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i  
  
    validates :message, :length => {:in => 10..750}
  
    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  
    def persisted?
      false
    end
  end