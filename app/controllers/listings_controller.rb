class ListingsController < ApplicationController
  def create
  @listing = Listing.create(listing_params)
  respond_to do |format|
    format.html {redirect_to listings_path}
    format.js
  end
end

def new
  @listing = Listing.new
  end

  def show
  @listing = Listing.all
  end

  def index
    @listing = Listing.all
  end

  private
  def listing_params
    params.require(:listing).permit(:avatar, :name, :content, :user_id)
  end
end
