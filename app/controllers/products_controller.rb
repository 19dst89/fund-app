class ProductsController < ApplicationController

def index
  @products = Product.all
end

def new
  @product = Product.new
end

def show
  product_id = params[:id]
  @product = Product.find_by_id(product_id)
end

def create
  @product = Product.new(product_params)
    if Product.save
      redirect_to product_path
    end
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

def destroy
  product_id = params[:id]
  @product = Product.find_by_id(product_id)
  @product.destroy
  redirect_to products_path
end

  private

  def product_params
    params.require(:product).permit(:name, :description, :min_price, :total_donated_amount, :inventory_amount, :avatar)
  end

end
