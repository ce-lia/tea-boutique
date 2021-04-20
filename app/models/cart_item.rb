class CartItem < ApplicationRecord
  belongs_to :shoppingsession
  belongs_to :product
end
