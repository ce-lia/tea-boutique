class WarehousePolicy  < Struct.new(:merchant, :warehouse)
  def dashboard?
    return false unless merchant.instance_of?(Merchant)
    true
  end
end
