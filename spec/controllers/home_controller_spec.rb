require 'rails_helper'

RSpec.describe HomeController do

  describe 'GET #index' do
    it 'returns status ok' do
      get :index
      expect(response.status).to eq(200)
    end
    it 'render the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
