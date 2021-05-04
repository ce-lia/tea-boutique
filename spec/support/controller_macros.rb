module ControllerMacros
  def login_merchant
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:merchant]
      sign_in FactoryBot.create(:merchant)
    end
  end

  def login_client
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:client]
      sign_in FactoryBot.create(:client)
    end
  end
end
