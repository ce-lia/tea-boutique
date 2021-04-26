class WarehouseController < ApplicationController
  before_action :authenticate_merchant!

  def pundit_user
    Merchant.find_by(params[:email])
  end

  def dashboard
    authorize :warehouse, :dashboard?
  end
end
