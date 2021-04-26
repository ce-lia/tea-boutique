class MerchantController < ApplicationController
  before_action :authenticate_merchant!
  def dashboard
  end
end
