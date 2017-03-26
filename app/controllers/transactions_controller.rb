class TransactionsController < ApplicationController

  def index
    @products = Product.all
    @users = User.all
  end

  def show
    transaction_id = params[:id]
    @transaction = Transaction.find(transaction_id)
  end

  def new
    @transaction = Transaction.new
    # currently hardcoding product until i figure out how to grab it dynamically
    @product = Product.first
    @user = User.find_by_id(current_user.id)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    # currently hardcoding product id until i figure out how to grab it dynamically
    @transaction.product_id = Product.first.id
    if @transaction.save
      redirect_to @transaction
    end
  end


  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :product_id)
  end
end
