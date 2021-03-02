class ContactForm < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  after_create_commit do 
    ContactMailer.contact_us(self.id).deliver_later!
  end

  def full_name
    first_name +' '+ last_name
  end
end
