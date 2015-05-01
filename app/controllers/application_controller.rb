class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :master?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).concat [:company_id]
  end

end
