class ChargesController < ApplicationController

  def new
    @charge = Charge.new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Fun(d)raiser rails Stripe customer',
      :currency    => 'usd'
    )

    @charge = Charge.create(charge_params)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def show
    @charge = Charge.find_by_id(params[:id])
  end

  private

  def charge_params
    params.require(:charge).permit(:customer_name, :amount, :customer_email, :description, :currency)
  end

end
