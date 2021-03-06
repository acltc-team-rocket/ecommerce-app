class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :current_user, :human_date_and_time
  before_action :calculate_cart_count

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def human_date_and_time(date)
    date.strftime("%b %e, %l:%M %p")
  end

  def authenticate_admin!
    unless current_user && current_user.admin 
      flash[:danger] = "Get out of here hacker!"
      redirect_to "/"
    end
  end

  def authenticate_user!
    unless current_user
      flash[:info] = "Please sign in or sign up to order!!!"
      redirect_to "/login"
    end
  end

  def calculate_cart_count
    if current_user && current_user.orders.find_by(completed: false)
      if session[:cart_count]
        @cart_count = session[:cart_count]
      else
        @cart_count = 0
        current_user.orders.find_by(completed: false).carted_products.each do |carted_product|
          @cart_count += carted_product.quantity
        end
        session[:cart_count] = @cart_count
      end
    else
      @cart_count = 0
    end
  end

end
