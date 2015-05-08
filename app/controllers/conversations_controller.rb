class ConversationsController < ApplicationController

def create
@conversation = current_user.conversations.new( conversation_params )
    @conversation.inquiry_id = params[:inquiry_id]
    @conversation.save
    respond_to do |format|
      format.html
      format.js { render json: @conversation }
    end
  end

  private

  def conversation_params
    params.require( :conversation ).permit( :message )
  end

end
