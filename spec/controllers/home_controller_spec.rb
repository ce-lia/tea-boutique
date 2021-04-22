require 'rails_helper'

RSpec.describe HomeController do
  let(:client) { instance_double(Client) }
  before { log_in(client) }

  describe 'GET #index' do
    it 'returns status ok' do
      get :index
      expect(response.status).to be(200)
    end
  end
end
