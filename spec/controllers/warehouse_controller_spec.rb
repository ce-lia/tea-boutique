require 'rails_helper'

RSpec.describe WarehouseController do
  let(:merchant) { instance_double(Merchant) }
  before { log_in(merchant) }

  describe 'GET #dashboard' do
    it 'returns status ok' do
      get :dashboard
      expect(response.status).to be(200)
    end
  end
end
