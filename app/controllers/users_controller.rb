class UsersController < ApplicationController

  before_action :current_user?



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
    User.exists?(params)
  end

  def current_user?
    if (current_user != User.find(params[:id]))
      flash[:danger] = "Not authorized to view page."
      redirect_to root_path
    end
  end


end
