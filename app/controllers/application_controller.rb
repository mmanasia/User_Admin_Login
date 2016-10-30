class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit


  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |u|
  #     u.permit :username, :email, :password, :password_confirmation, :role_id
  #     end
  # end
  #
# passing params for sign up and update account.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password,:password_confirmation, :role_id ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password,:password_confirmation, :role_id])
  end

  def user_not_authorized
    flash[:alert] = "You are not cool enough to do this - go back from where you came!!!."
    redirect_to(request.referrer || root_path)
  end

  # Route to post after log_in
  def after_sign_in_path_for(resource)
    posts_path
  end
end
