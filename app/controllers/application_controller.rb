class ApplicationController < ActionController::Base
  before_action :configure_devise, if: :devise_controller?

  protected

  def configure_devise
    devise_parameter.permit(:sign_up, keys: [:first_name, :last_name, :description, :email, :age])
  end
end
