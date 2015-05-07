class ListingsController < ApplicationController

  def index
  @listing = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = current_user.listings.new( listing_params )
    if @listing.save
      flash[:notice] = "created."
      redirect_to users_path
    else
      flash[:notice] = "NOT created"
      redirect_to new_lisiting_path
    end
  end

  private

  def listing_params
    params.require( :listing ).permit( :user_id, :address,
    :room_type, :bathroom, :price, :notes )
  end

end
