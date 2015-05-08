class UsersController < ApplicationController

  def index
    @listing = Listing.where(user_id: current_user.id)
    @inquiries = Inquiry.where(user_id: current_user.id)
    @conversation = Conversation.new
  end

end

