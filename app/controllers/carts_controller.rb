class CartsController < ApplicationController

  before_action :set_cart, only: [:show, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  def new
    @cart = Cart.new
  end

  def show
  end

  def destroy
    @cart.destroy if @card.id == session[:cart_id]
    session[:cart_id] = nil
    redirect to shop_url, notice: 'Your cart in empty'
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params[:cart]
  end

  def invalid_cart
    logger.error "You are trying to access invalid cart"
    redirect to shop_url, notice: "That cart doesn't exist"
  end


end
