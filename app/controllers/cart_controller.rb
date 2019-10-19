class CartController < ApplicationController

  before_action :find_cart

  def add
      @cart.save if @cart.new_record?
      session[:cart_id] = @cart.id
      product = Product.find(params[:id])
      OrderProduct.create! :order => @cart, :product => product, :price => product.price
      @cart.recalculate_price!
      flash[:notice] = "Item added to cart!"
      redirect_to '/cart'   
    
  end

  def remove
      product = @cart.order_products.find(params[:id])
      product.destroy
      @cart.recalculate_price!
      redirect_to '/cart'
  end

  def checkout
    @cart.checkout!
    session.delete(:cart_id)
    flash[:notice] = "Thank you for your purchase! We will ship it shortly!"
    redirect_to "/"
  end



  protected

  def find_cart
      @cart = session[:cart_id] ? Order.find(session[:cart_id]) : current_user.orders.build
  end
end
