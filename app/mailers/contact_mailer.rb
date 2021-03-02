class ContactMailer < ApplicationMailer
  default from: "contact@support.com"
  
  def contact_us(contact_form_id)
    @cf = ContactForm.find_by_id(contact_form_id)
    mail(to: @cf.email, subject: 'Contact Us') if @cf.present?
  end
end
