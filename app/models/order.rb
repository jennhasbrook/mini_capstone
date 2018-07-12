class Order < ApplicationRecord
  belongs_to :user

  has_many :carted_products

  has_many :products, through: :carted_products

  # def calculated_subtotal
  #   product.price * quantity.to_i
  # end

  # def calculated_tax
  #   calculated_subtotal * 0.09
  # end

  # def calculated_total
  #   calculated_tax + calculated_subtotal 
  # end
  
  # def updated_subtotal
  #   subtotal = 0
  #   carted_products.each do|carted_product|
  #     carted_product.product.price * carted_product.quantity

  #   end
  # end

  # def updated_tax
  #   updated_subtotal *0.09
  # end

  # def updated_total
  #   updated_subtotal + updated_tax
  # end



  def friendly_created_at
    created_at.strftime("%m-%e-%y %H:%M")
  end

end
