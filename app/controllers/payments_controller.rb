class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]

    def success
    end
  
    def webhook
      puts "received webhoook from Stripe"
      payment_id = params[:data][:object][:payment_intent]
      payment = Stripe::PaymentIntent.retrieve(payment_id)
      listing_id = payment.metadata.listing_id
      user_id = payment.metadata.user_id
      puts "listing_id:"
      p listing_id
      puts "user_id:"
      p user_id
  
      listing = Listing.find(listing_id.to_i)
      listing.sold = true
      listing.buyer_id = user_id
      listing.save
  
      status 200
    end
end
