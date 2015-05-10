class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :master?

  protected

  def master?
    current_user.master
  end

end
