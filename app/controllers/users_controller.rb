class UsersController < ApplicationController

  def index
    @listing = Listing.where(user_id: current_user.id)
  end

end

