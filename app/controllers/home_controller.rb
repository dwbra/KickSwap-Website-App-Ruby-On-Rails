class HomeController < ApplicationController
  def page
    @listings = Listing.all
  end

  def account
    @listings = Listing.all
  end
end
