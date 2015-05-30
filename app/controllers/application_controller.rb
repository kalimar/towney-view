class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << [:primary_first_name, :primary_last_name, :street_address, :primary_phone, :primary_birth_day, :primary_birth_month]
    devise_parameter_sanitizer.for(:sign_up) << [:primary_first_name, :primary_last_name, :street_address, :primary_phone, :primary_birth_day, :primary_birth_month]
  end
end
