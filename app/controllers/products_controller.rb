class ProductsController < ApplicationController

  def main
    @product = Product.last
    @products = Product.all
    @users = User.all
    @charges = Charge.all
  end

  def index
    @products = Product.all
    @users = User.all
    @charges = Charge.all
  end

  def new
    # no auth. anyone can make a product.
    @product = Product.new
  end

  def show
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
  end

  def create
    # also no auth.
    product_params[:inventory_amount] = 0
    @product = Product.create(product_params)
    redirect_to @product
  end

  def edit
    # also no auth.
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
  end

  def update
    # also no auth.
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
    @product.update_attributes(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    # also no auth. and doesn't correctly handle what happens if there are
    # associated charges.
    product_id = params[:id]
    @product = Product.find(product_id)
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :min_price, :total_donated_amount, :inventory_amount, :avatar)
  end

end
