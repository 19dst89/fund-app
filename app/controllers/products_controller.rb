class ProductsController < ApplicationController

  before_action :require_login, except: [:main]

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

  def show
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
  end

  def new
    if signed_in?
      @product = Product.new
    else
      flash[:notice] = "Log in to create a new product"
      redirect_to root_path
    end
  end

  def create
    product_params[:inventory_amount] = 0
    @product = Product.create(product_params)
    redirect_to @product
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
  end

  def update
    product_id = params[:id]
    @product = Product.find_by_id(product_id)
    @product.update_attributes(product_params)
    redirect_to product_path(@product)
  end

## need to se archive or something
  def destroy
    product_id = params[:id]
    @product = Product.find(product_id)
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :min_price, :total_donated_amount, :inventory_amount, :avatar)
  end

  def require_login
    if !(signed_in?)
      flash[:danger] = "Please log in."
      redirect_to root_path
    end
  end

end
