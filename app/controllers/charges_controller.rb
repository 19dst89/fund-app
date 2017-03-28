class ChargesController < ApplicationController

  def new
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
      flash[:error] = 'Charge not completed. Donation amount must be at least $5.'
      redirect_to new_charge_path
      return
    end

    Stripe::Charge.create(
      :amount => @amount,
      :currency => 'usd',
      :source => params[:stripeToken],
      :description => 'Donation to Project Fun(d)raiser'
    )

    @charge = Charge.create(charge_params)

  end

  def show
    @charge = Charge.find_by_id(params[:id])

  end

  private

  def charge_params
    params.require(:charge).permit(:customer_name, :amount, :customer_email, :description, :currency)
  end


end