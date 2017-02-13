class ProductsController < ApplicationController
  def index
    @products = Product.includes(:company).active.search(params[:search])

    respond_to do |format|
      format.html
      format.js
    end
  end
end
