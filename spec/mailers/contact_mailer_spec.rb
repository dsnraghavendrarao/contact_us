require "rails_helper"

RSpec.describe ContactMailer, :type => :mailer do
  describe "notify" do
    let(:contact_form){create :contact_form}
    let(:mail) { ContactMailer.contact_us(contact_form.id) }

    it "renders the headers" do
      expect(mail.to).to eq([contact_form.email])
      expect(mail.from).to eq(["contact@support.com"])
    end

    it "renders the body" do
      expect(mail.body).to match("Thank you")
    end
  end
end