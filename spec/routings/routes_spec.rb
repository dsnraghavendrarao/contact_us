require 'rails_helper'

RSpec.describe "App routings", type: :routing do
  it "Should nav to contact form new action" do 
    expect(:get => "/").to route_to(:controller => "contact_forms", :action => "new")
  end
  it "/Contact should also nav to new action" do 
    expect(:get => "/contact").to route_to(:controller => "contact_forms", :action => "new")
  end
  it "Post call should nav to create action" do 
    expect(:post => "/contact_forms").to route_to(:controller => "contact_forms", :action => "create")
  end
  it "Get call should nav to new action" do 
    expect(:get => "/contact_forms/new").to route_to(:controller => "contact_forms", :action => "new")
  end
end