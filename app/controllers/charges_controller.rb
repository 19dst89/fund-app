class ChargesController < ApplicationController


  def index
    @charges = Charge.all
  end

  def new
    @product = Product.last
    @charge = Charge.new

  end

  def create

    @amount = params[:amount]

    @amount = @amount.gsub('$', '').gsub(',', '')

    begin
      @amount = Float(@amount).round(2)
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    @amount = (@amount * 100).to_i

    if @amount < 500
      flash[:error] = 'Charge not completed. Donation amount must be greater than or equal to the minimum price.'
      redirect_to root_path
      return
    end

    Stripe::Charge.create(
      :amount => @amount,
      :currency => 'usd',
      :source => params[:stripeToken],
      :description => 'Donation to Project Fun(d)raiser'
    )

    @charge = Charge.create(charge_params)
    # this assigns the charge to the most recently created product
    # Should provide choice later
    @product = Product.last
    @product.charges << @charge

    @product = @charge.product
    @product.total_donated_amount = @product.total_donated_amount + @charge.amount

    @product.inventory_amount = @product.inventory_amount - 1

    if @charge.save && @product.save
      redirect_to root_path
    end
  end

  def show
    @charge = Charge.find_by_id(params[:id])

  end

  private

  def charge_params
    params.require(:charge).permit(:customer_name, :amount, :customer_email, :description, :currency)
  end


end
