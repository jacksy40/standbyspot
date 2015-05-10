class UsersController < ApplicationController

  def index
    @listing = Listing.where(user_id: current_user.id)
    @inquiries = Inquiry.where(user_id: current_user.id)
    @conversation = Conversation.new
  end

  def update
    @profile_photo = current_user.update_attributes(profile_photo: params[:profile_photo])
    flash[:notice] = "Avatar updated"
    redirect_to users_path
  end

end

