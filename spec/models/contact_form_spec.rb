require 'rails_helper'
require 'spec_helper'


RSpec.describe ContactForm, type: :model do
  let(:contact_form){create(:contact_form)}
  include ActiveJob::TestHelper
  it 'queues the job / callback' do
    expect { contact_form }
      .to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
  end

  describe "Email should valid" do
    before { contact_form.email = " " }
    it { should_not be_valid }
  end
end

