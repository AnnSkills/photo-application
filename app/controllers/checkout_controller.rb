class CheckoutController < ApplicationController
  def create
    @session = Stripe::Checkout::Session.create({
                                                  customer: current_user.stripe_customer_id,
                                                  success_url: root_url,
                                                  cancel_url: pricing_url,
                                                  line_items: [
                                                    {price: params[:price], quantity: 1},
                                                  ],
                                                  mode: 'subscription',
                                                })
    redirect_to @session.url, allow_other_host: true
  end
end
