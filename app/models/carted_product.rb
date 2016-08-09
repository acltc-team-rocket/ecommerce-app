class CartedProduct < ApplicationRecord
  belongs_to :product 
  belongs_to :order

  validate :quantity_must_be_less_than_5



  def quantity_must_be_less_than_5
    if quantity && quantity > 4
      errors.add(:quantity, "Hey, you can only buy less than 5 of a product.")
    end
  end
end
