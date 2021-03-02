require 'rails_helper'
RSpec.describe ErrorPagesController, type: :controller do
  it 'responds with a 404 if the page is not found' do
    expect { get(:show) }.to raise_error(ActionController::RoutingError)
  end
end