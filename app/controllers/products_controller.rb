class ProductsController < ApplicationController
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