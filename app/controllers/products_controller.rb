class ProductsController < ApplicationController
  include CurrentCartConcern
  before_action :set_cart, only: [:show, :index]

  def index
    @products = Product.all.order("created_at desc")
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :image, :price)
  end
end