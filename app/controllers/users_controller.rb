class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if check_id?(params[:id])
      @user = User.find(params[:id])
    elsif current_user == nil
      redirect_to root_path
    else
      @user = current_user
    end

    # THIS SHOULD BE CHANGED
    @product = Product.last
    @products = Product.all
    @charges = Charge.all

  end

  private

  def check_id?(params)
    if User.exists?(params)
      true
    else
      false
    end
  end
end
