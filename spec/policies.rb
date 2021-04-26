require 'rails_helper'

RSpec.describe WarehousePolicy do
  subject { described_class }

  permissions :dashboard? do
    it "denies access to the dashboard if a client logs in" do
      expect(subject).not_to permit(FactoryBot.create :client, email: 'tester@testdomain.test',
      password: 'pa$$word')
    end

    it "grants access to the dashboard if a merchant logs in" do
      expect(subject).to permit(FactoryBot.create :merchant, email: 'tester@testdomain.test',
  password: 'pa$$word')
    end
  end
end
