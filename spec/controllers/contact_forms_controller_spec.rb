require 'rails_helper'
RSpec.describe ContactFormsController, type: :controller do
  describe "Get action: Index" do 
  	it "Should return a success response" do
  	  get :new
  	  expect(response).to be_successful
  	end
  end
  describe "Post action: Create" do 
    let(:post_call){post :create,params: attributes_for(:contact_form) }
    it "Should return a success response" do
      post_call
      expect(response).to be_truthy
    end
    it "Should create" do
      post_call 
      expect(ContactForm.count).to eq(1)
    end
    it "Should redirect" do
      expect(post_call).to redirect_to "http://test.host/en"
    end
  end
end