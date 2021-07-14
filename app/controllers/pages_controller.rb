class PagesController < ApplicationController
  def home
    @products = Product.all
  end

  def shop
    @products = Product.all
  end
end
