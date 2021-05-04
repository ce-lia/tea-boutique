require 'rails_helper'

RSpec.describe WarehouseController do

  describe 'GET #dashboard' do
    context "when the merchant is signed in" do
      login_merchant
      it 'returns status ok' do
        get :dashboard
        expect(response.status).to eq(200)
      end
    end
    context "when a client is signed in" do
      login_client
      it 'redirects to home page' do
        get :dashboard
        expect(response.body).to include(root_path)
      end
    end
  end
end
