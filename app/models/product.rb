class Product < ApplicationRecord

  def sale_message
    if price.to_i < 15
      return "discount_item"
    else
      return "On Sale!!!"
    end
  end

  # def make_human_message
  #   sale_message.capitalize.split("_").join(" ")
  # end

  def tax
    price.to_i * 0.09
  end

  def total
    price.to_i + tax
  end



end
