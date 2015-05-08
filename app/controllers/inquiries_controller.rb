class InquiriesController < ApplicationController

  def create
    @message = current_user.inquiries.new( inquiry_params )
    @message.listing_id = params[:listing_id]
    @message.save
    respond_to do |format|
      format.html
      format.js { render json: @message }
    end
  end

  private

  def inquiry_params
    params.require( :inquiry ).permit( :message )
  end

end
