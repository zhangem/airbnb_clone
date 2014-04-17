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
    @listing = Listing.find(params[:id])

  end

  def index
    @listing = Listing.all.page(params[:page]).per(5)

  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    redirect_to listings_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

  private
  def listing_params
    params.require(:listing).permit(:avatar, :name, :content, :user_id)
  end
end
