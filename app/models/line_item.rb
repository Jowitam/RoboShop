class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def full_price
    unite_price * quantity
  end

end
