class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :categorized_products
  has_many :categories, through: :categorized_products

  validates :name, :description, :price, presence: true
  validates :price, numericality: {greater_than: 0}

  TAXRATE = 0.09

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
    price.to_i * TAXRATE
  end

  def total
    price.to_i + tax
  end



end
