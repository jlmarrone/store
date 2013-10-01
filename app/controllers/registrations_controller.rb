class Devise::RegistrationsController < DeviseController
  before_filter :configure_permitted_parameters
  before_filter :remove_password_params, :only => [:update]

  protected
  def remove_password_params
    puts "Entra a remove_password_params"
    if params[:user][:current_password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation) if
      params[:user][:password_confirmation].blank?
    end
  end
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username,
        :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username,
        :email, :password, :password_confirmation, :current_password)
    end
  end
end