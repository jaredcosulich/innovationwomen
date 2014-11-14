require 'rails_helper'

RSpec.describe "PersonMessages", :type => :request do
  describe "GET /person_messages" do
    it "works! (now write some real specs)" do
      get person_messages_path
      expect(response).to have_http_status(200)
    end
  end
end
