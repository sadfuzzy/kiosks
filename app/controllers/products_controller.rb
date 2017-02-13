class ProductsController < ApplicationController
  def index
    @products = Product.includes(:company).active.search(params[:search])
  end
end
