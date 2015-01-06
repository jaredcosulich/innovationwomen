require 'rails_helper'

describe HomeController do

  describe 'GET index' do
    it 'works' do
      get :index
      expect(response).to be_success
    end
  end
end
