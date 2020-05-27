class ProductsController < ActionController::Base
  helper_method :cart
 
  def cart
    session[:cart] ||= []
  end

  def index 
  end

  def add 
    product = params[:product]
 
    cart << product
    redirect_to root_path
  end
end