class ProductsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @products=Product.all
  end

  def new
  end

  def create
    product_params = params.require(:product).permit(:name, :description, :min_price, :total_donated_amount, :inventory_amount, :avatar)
    product = Product.new(product-params)
    if Product.save
      redirect_to products_path
    end
  end


end
