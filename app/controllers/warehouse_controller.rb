class WarehouseController < ApplicationController
  before_action :authenticate_merchant!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def pundit_user
    if current_merchant
      Merchant.find_by(params[:email])
    elsif current_client
      Client.find_by(params[:email])
    end
  end

  def dashboard
    authorize :warehouse, :dashboard?
  end

  private
  def user_not_authorized
    flash[:alert] = "You must be a registered merchant to access this part of the boutique"
    redirect_to(root_path)
  end

end
