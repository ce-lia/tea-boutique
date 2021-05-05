class WarehousePolicy < ApplicationPolicy

  def dashboard?
    return true if user.instance_of?(Merchant)
  end
end
