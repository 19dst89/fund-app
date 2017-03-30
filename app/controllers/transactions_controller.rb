# isn't used, shouldn't be there, dead code :( X_X

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
  end

  def create
    # @transaction = Transaction.new(transaction_params)
    @user = current_user
    @transaction = @user.transactions.new(product: Product.first)
    # currently hardcoding product id until i figure out how to grab it dynamically

    # @transaction.product_id = Product.first.id
    if @transaction.save
      redirect_to @transaction
    end
  end


  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :product_id)
  end
end
