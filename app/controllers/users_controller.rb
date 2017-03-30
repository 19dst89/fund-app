class UsersController < ApplicationController
  # no hooks (before_action) which leads to lots of security holes.



  # doesn't need to be there. this is not a real route.
  def index
    @users = User.order(params[:sort])
  end

  def show
    # This logic always goes to show page if there's a real user in the params.
    # It should check if the user is logged in first.
    if User.exists?(params[:id])
      @user = User.find(params[:id])
    elsif current_user == nil
      redirect_to root_path
    else
      @user = current_user
    end

    # THIS SHOULD BE CHANGED
    # this will show information about the most recent product on the page about
    # every user. so the page for every user looks just like the page for the current_user.
    @product = Product.last
    @products = Product.all
    # This is all of the charges for EVERYTHING on the whole site.
    @charges = Charge.all

  end

  def edit
    # this has no auth. everyone can edit everyone's profile.
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

  def update
    # also no auth.
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
    # so much code smell
    # could just be
    # User.exists?(params)
    if User.exists?(params)
      true
    else
      false
    end
  end
end
