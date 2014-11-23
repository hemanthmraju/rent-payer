class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout

  private

  def layout
    # only turn it off for login pages:
    p "lau"*20
    p (is_a?(Devise::SessionsController) || is_a?(Devise::RegistrationsController))
    (is_a?(Devise::SessionsController) || is_a?(Devise::RegistrationsController)) ? false : "application"
    # or turn layout off for every devise controller:
    #devise_controller? && "application"
  end
end
