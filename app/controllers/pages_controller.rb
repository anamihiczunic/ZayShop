class PagesController < ApplicationController
  include CurrentCartConcern
  before_action :set_cart, only: [:home, :shop]

  def home
    @products = Product.all
  end

  def shop
    @products = Product.all
  end
end
