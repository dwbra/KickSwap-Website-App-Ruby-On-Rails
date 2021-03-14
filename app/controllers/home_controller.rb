class HomeController < ApplicationController
  def page
    @listings = Listing.all
    @render_carousel = true
  end

  def account
    @listings = Listing.all
    @my_purchases = Listing.where(buyer_id: current_user.id)
  end
end 
