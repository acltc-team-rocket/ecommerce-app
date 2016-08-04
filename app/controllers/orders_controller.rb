class OrdersController < ApplicationController

  def create
    quantity = params[:quantity].to_i
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * quantity
    tax = product.tax * quantity
    total = subtotal + tax
    order = Order.new(user_id: current_user.id, product_id: product.id, quantity: quantity, subtotal: subtotal, tax: tax, total: total)
    if order.save
      flash[:success] = "Order Completed!"
      redirect_to "/orders/#{order.id}"
    else
      flash[:danger] = "Order not completed. You're not cool enough."
      redirect_to "/products/#{product.id}"
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
