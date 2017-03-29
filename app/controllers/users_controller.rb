class UsersController < ApplicationController
  def index
    @users = User.order(params[:sort])
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

  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

  def update
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end


  def check_id?(params)
    if User.exists?(params)
      true
    else
      false
    end
  end
end
