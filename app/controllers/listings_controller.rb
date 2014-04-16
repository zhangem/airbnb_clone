class ListingsController < ApplicationController
  def create
  @listing = Listing.create( listing_params )
end

private

def listing_params
  params.require(:listing).permit(:avatar)
end
end
