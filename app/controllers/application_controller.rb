class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?





   protected



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |profile_params|
    profile_params.permit(:first_name, :last_name, :email, :password, :password_confirmation )
  end

  devise_parameter_sanitizer.permit(:account_update) do |profile_params|
    profile_params.permit(:first_name, :last_name, :email, :password, :password_confirmation )
  end



  end
end
